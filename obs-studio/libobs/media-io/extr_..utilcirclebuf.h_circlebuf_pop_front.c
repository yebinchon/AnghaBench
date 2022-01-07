
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {scalar_t__ start_pos; scalar_t__ end_pos; scalar_t__ capacity; scalar_t__ size; } ;


 int circlebuf_peek_front (struct circlebuf*,void*,size_t) ;

__attribute__((used)) static inline void circlebuf_pop_front(struct circlebuf *cb, void *data,
           size_t size)
{
 circlebuf_peek_front(cb, data, size);

 cb->size -= size;
 if (!cb->size) {
  cb->start_pos = cb->end_pos = 0;
  return;
 }

 cb->start_pos += size;
 if (cb->start_pos >= cb->capacity)
  cb->start_pos -= cb->capacity;
}
