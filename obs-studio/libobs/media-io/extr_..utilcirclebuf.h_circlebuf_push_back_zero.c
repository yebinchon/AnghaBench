
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct circlebuf {size_t end_pos; size_t size; size_t capacity; int * data; } ;


 int circlebuf_ensure_capacity (struct circlebuf*) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static inline void circlebuf_push_back_zero(struct circlebuf *cb, size_t size)
{
 size_t new_end_pos = cb->end_pos + size;

 cb->size += size;
 circlebuf_ensure_capacity(cb);

 if (new_end_pos > cb->capacity) {
  size_t back_size = cb->capacity - cb->end_pos;
  size_t loop_size = size - back_size;

  if (back_size)
   memset((uint8_t *)cb->data + cb->end_pos, 0, back_size);
  memset(cb->data, 0, loop_size);

  new_end_pos -= cb->capacity;
 } else {
  memset((uint8_t *)cb->data + cb->end_pos, 0, size);
 }

 cb->end_pos = new_end_pos;
}
