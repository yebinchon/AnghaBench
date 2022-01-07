
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
struct circlebuf {size_t size; size_t end_pos; size_t capacity; void* data; } ;


 int assert (int) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static inline void circlebuf_peek_back(struct circlebuf *cb, void *data,
           size_t size)
{
 assert(size <= cb->size);

 if (data) {
  size_t back_size = (cb->end_pos ? cb->end_pos : cb->capacity);

  if (back_size < size) {
   size_t front_size = size - back_size;
   size_t new_end_pos = cb->capacity - front_size;

   memcpy((uint8_t *)data + (size - back_size), cb->data,
          back_size);
   memcpy(data, (uint8_t *)cb->data + new_end_pos,
          front_size);
  } else {
   memcpy(data, (uint8_t *)cb->data + cb->end_pos - size,
          size);
  }
 }
}
