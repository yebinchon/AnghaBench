
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int chunks_count; int peak_chunks_count; double avg_chunks_count; size_t limit; int * huge_list; int * storage; int use_custom_heap; scalar_t__ overflow; scalar_t__ peak; scalar_t__ size; void* real_peak; void* real_size; scalar_t__ last_chunks_delete_count; scalar_t__ last_chunks_delete_boundary; scalar_t__ cached_chunks_count; int * cached_chunks; TYPE_2__* main_chunk; } ;
typedef TYPE_1__ zend_mm_heap ;
struct TYPE_5__ {int free_tail; int* free_map; int * map; scalar_t__ num; scalar_t__ free_pages; struct TYPE_5__* prev; struct TYPE_5__* next; TYPE_1__* heap; TYPE_1__ heap_slot; } ;
typedef TYPE_2__ zend_mm_chunk ;


 scalar_t__ UNEXPECTED (int ) ;
 void* ZEND_MM_CHUNK_SIZE ;
 int ZEND_MM_CUSTOM_HEAP_NONE ;
 int ZEND_MM_FIRST_PAGE ;
 int ZEND_MM_LRUN (int) ;
 scalar_t__ ZEND_MM_PAGES ;
 int Z_L (int) ;
 int errno ;
 int fprintf (int ,char*,int,char*) ;
 int stderr ;
 int stderr_last_error (char*) ;
 char* strerror (int) ;
 scalar_t__ zend_mm_chunk_alloc_int (void*,void*) ;

__attribute__((used)) static zend_mm_heap *zend_mm_init(void)
{
 zend_mm_chunk *chunk = (zend_mm_chunk*)zend_mm_chunk_alloc_int(ZEND_MM_CHUNK_SIZE, ZEND_MM_CHUNK_SIZE);
 zend_mm_heap *heap;

 if (UNEXPECTED(chunk == ((void*)0))) {







  return ((void*)0);
 }
 heap = &chunk->heap_slot;
 chunk->heap = heap;
 chunk->next = chunk;
 chunk->prev = chunk;
 chunk->free_pages = ZEND_MM_PAGES - ZEND_MM_FIRST_PAGE;
 chunk->free_tail = ZEND_MM_FIRST_PAGE;
 chunk->num = 0;
 chunk->free_map[0] = (Z_L(1) << ZEND_MM_FIRST_PAGE) - 1;
 chunk->map[0] = ZEND_MM_LRUN(ZEND_MM_FIRST_PAGE);
 heap->main_chunk = chunk;
 heap->cached_chunks = ((void*)0);
 heap->chunks_count = 1;
 heap->peak_chunks_count = 1;
 heap->cached_chunks_count = 0;
 heap->avg_chunks_count = 1.0;
 heap->last_chunks_delete_boundary = 0;
 heap->last_chunks_delete_count = 0;
 heap->huge_list = ((void*)0);
 return heap;
}
