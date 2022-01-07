
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void const uint8_t ;
struct circlebuf {size_t size; size_t start_pos; void const* data; size_t capacity; } ;


 int circlebuf_ensure_capacity (struct circlebuf*) ;
 int memcpy (void const*,void const*,size_t) ;

__attribute__((used)) static inline void circlebuf_push_front(struct circlebuf *cb, const void *data,
     size_t size)
{
 cb->size += size;
 circlebuf_ensure_capacity(cb);

 if (cb->start_pos < size) {
  size_t back_size = size - cb->start_pos;

  if (cb->start_pos)
   memcpy(cb->data, (uint8_t *)data + back_size,
          cb->start_pos);

  cb->start_pos = cb->capacity - back_size;
  memcpy((uint8_t *)cb->data + cb->start_pos, data, back_size);
 } else {
  cb->start_pos -= size;
  memcpy((uint8_t *)cb->data + cb->start_pos, data, size);
 }
}
