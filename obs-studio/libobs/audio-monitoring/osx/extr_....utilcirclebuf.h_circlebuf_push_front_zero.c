
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct circlebuf {size_t size; size_t start_pos; size_t capacity; int * data; } ;


 int circlebuf_ensure_capacity (struct circlebuf*) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static inline void circlebuf_push_front_zero(struct circlebuf *cb, size_t size)
{
 cb->size += size;
 circlebuf_ensure_capacity(cb);

 if (cb->start_pos < size) {
  size_t back_size = size - cb->start_pos;

  if (cb->start_pos)
   memset(cb->data, 0, cb->start_pos);

  cb->start_pos = cb->capacity - back_size;
  memset((uint8_t *)cb->data + cb->start_pos, 0, back_size);
 } else {
  cb->start_pos -= size;
  memset((uint8_t *)cb->data + cb->start_pos, 0, size);
 }
}
