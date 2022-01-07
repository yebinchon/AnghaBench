
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev_size; } ;
struct free_block {int size; int prev_size; TYPE_1__ header; struct free_block* next; } ;
struct block_header {int size; int prev_size; TYPE_1__ header; struct block_header* next; } ;
typedef int sljit_uw ;


 int ALIGN_SIZE (int) ;
 struct free_block* AS_BLOCK_HEADER (struct free_block*,int) ;
 struct free_block* AS_FREE_BLOCK (struct free_block*,int) ;
 int CHUNK_MASK ;
 int CHUNK_SIZE ;
 void* MEM_START (struct free_block*) ;
 scalar_t__ alloc_chunk (int) ;
 int allocated_size ;
 int allocator_grab_lock () ;
 int allocator_release_lock () ;
 struct free_block* free_blocks ;
 int sljit_insert_free_block (struct free_block*,int) ;
 int sljit_remove_free_block (struct free_block*) ;
 int total_size ;

void* sljit_malloc_exec(sljit_uw size)
{
 struct block_header *header;
 struct block_header *next_header;
 struct free_block *free_block;
 sljit_uw chunk_size;

 allocator_grab_lock();
 if (size < (64 - sizeof(struct block_header)))
  size = (64 - sizeof(struct block_header));
 size = ALIGN_SIZE(size);

 free_block = free_blocks;
 while (free_block) {
  if (free_block->size >= size) {
   chunk_size = free_block->size;
   if (chunk_size > size + 64) {

    chunk_size -= size;
    free_block->size = chunk_size;
    header = AS_BLOCK_HEADER(free_block, chunk_size);
    header->prev_size = chunk_size;
    AS_BLOCK_HEADER(header, size)->prev_size = size;
   }
   else {
    sljit_remove_free_block(free_block);
    header = (struct block_header*)free_block;
    size = chunk_size;
   }
   allocated_size += size;
   header->size = size;
   allocator_release_lock();
   return MEM_START(header);
  }
  free_block = free_block->next;
 }

 chunk_size = (size + sizeof(struct block_header) + CHUNK_SIZE - 1) & CHUNK_MASK;
 header = (struct block_header*)alloc_chunk(chunk_size);
 if (!header) {
  allocator_release_lock();
  return ((void*)0);
 }

 chunk_size -= sizeof(struct block_header);
 total_size += chunk_size;

 header->prev_size = 0;
 if (chunk_size > size + 64) {

  allocated_size += size;
  header->size = size;
  chunk_size -= size;

  free_block = AS_FREE_BLOCK(header, size);
  free_block->header.prev_size = size;
  sljit_insert_free_block(free_block, chunk_size);
  next_header = AS_BLOCK_HEADER(free_block, chunk_size);
 }
 else {

  allocated_size += chunk_size;
  header->size = chunk_size;
  next_header = AS_BLOCK_HEADER(header, chunk_size);
 }
 next_header->size = 1;
 next_header->prev_size = chunk_size;
 allocator_release_lock();
 return MEM_START(header);
}
