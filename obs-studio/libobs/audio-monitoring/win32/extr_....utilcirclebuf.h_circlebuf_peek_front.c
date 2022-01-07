
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
struct circlebuf {size_t size; size_t capacity; size_t start_pos; void* data; } ;


 int assert (int) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static inline void circlebuf_peek_front(struct circlebuf *cb, void *data,
     size_t size)
{
 assert(size <= cb->size);

 if (data) {
  size_t start_size = cb->capacity - cb->start_pos;

  if (start_size < size) {
   memcpy(data, (uint8_t *)cb->data + cb->start_pos,
          start_size);
   memcpy((uint8_t *)data + start_size, cb->data,
          size - start_size);
  } else {
   memcpy(data, (uint8_t *)cb->data + cb->start_pos, size);
  }
 }
}
