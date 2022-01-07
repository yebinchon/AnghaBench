
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void const uint8_t ;
struct circlebuf {size_t end_pos; size_t size; size_t capacity; void const* data; } ;


 int circlebuf_ensure_capacity (struct circlebuf*) ;
 int memcpy (void const*,void const*,size_t) ;

__attribute__((used)) static inline void circlebuf_push_back(struct circlebuf *cb, const void *data,
           size_t size)
{
 size_t new_end_pos = cb->end_pos + size;

 cb->size += size;
 circlebuf_ensure_capacity(cb);

 if (new_end_pos > cb->capacity) {
  size_t back_size = cb->capacity - cb->end_pos;
  size_t loop_size = size - back_size;

  if (back_size)
   memcpy((uint8_t *)cb->data + cb->end_pos, data,
          back_size);
  memcpy(cb->data, (uint8_t *)data + back_size, loop_size);

  new_end_pos -= cb->capacity;
 } else {
  memcpy((uint8_t *)cb->data + cb->end_pos, data, size);
 }

 cb->end_pos = new_end_pos;
}
