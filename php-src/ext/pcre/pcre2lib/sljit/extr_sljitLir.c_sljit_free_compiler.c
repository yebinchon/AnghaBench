
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_memory_fragment {struct sljit_memory_fragment* cpool; struct sljit_memory_fragment* next; struct sljit_memory_fragment* abuf; struct sljit_memory_fragment* buf; void* allocator_data; } ;
struct sljit_compiler {struct sljit_compiler* cpool; struct sljit_compiler* next; struct sljit_compiler* abuf; struct sljit_compiler* buf; void* allocator_data; } ;


 int SLJIT_FREE (struct sljit_memory_fragment*,void*) ;
 int SLJIT_UNUSED_ARG (void*) ;

void sljit_free_compiler(struct sljit_compiler *compiler)
{
 struct sljit_memory_fragment *buf;
 struct sljit_memory_fragment *curr;
 void *allocator_data = compiler->allocator_data;
 SLJIT_UNUSED_ARG(allocator_data);

 buf = compiler->buf;
 while (buf) {
  curr = buf;
  buf = buf->next;
  SLJIT_FREE(curr, allocator_data);
 }

 buf = compiler->abuf;
 while (buf) {
  curr = buf;
  buf = buf->next;
  SLJIT_FREE(curr, allocator_data);
 }




 SLJIT_FREE(compiler, allocator_data);
}
