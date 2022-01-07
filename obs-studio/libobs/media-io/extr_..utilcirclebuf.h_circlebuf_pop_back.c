
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {size_t start_pos; size_t end_pos; size_t capacity; scalar_t__ size; } ;


 int circlebuf_peek_back (struct circlebuf*,void*,size_t) ;

__attribute__((used)) static inline void circlebuf_pop_back(struct circlebuf *cb, void *data,
          size_t size)
{
 circlebuf_peek_back(cb, data, size);

 cb->size -= size;
 if (!cb->size) {
  cb->start_pos = cb->end_pos = 0;
  return;
 }

 if (cb->end_pos <= size)
  cb->end_pos = cb->capacity - (size - cb->end_pos);
 else
  cb->end_pos -= size;
}
