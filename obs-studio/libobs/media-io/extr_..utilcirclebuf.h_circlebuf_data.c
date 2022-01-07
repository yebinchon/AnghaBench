
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;
struct circlebuf {size_t start_pos; size_t size; size_t capacity; scalar_t__ data; } ;



__attribute__((used)) static inline void *circlebuf_data(struct circlebuf *cb, size_t idx)
{
 uint8_t *ptr = (uint8_t *)cb->data;
 size_t offset = cb->start_pos + idx;

 if (idx >= cb->size)
  return ((void*)0);

 if (offset >= cb->capacity)
  offset -= cb->capacity;

 return ptr + offset;
}
