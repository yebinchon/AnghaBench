
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct circlebuf {scalar_t__ start_pos; scalar_t__ end_pos; size_t capacity; scalar_t__ data; int size; } ;


 int memmove (int *,int *,int) ;

__attribute__((used)) static inline void circlebuf_reorder_data(struct circlebuf *cb,
       size_t new_capacity)
{
 size_t difference;
 uint8_t *data;

 if (!cb->size || !cb->start_pos || cb->end_pos > cb->start_pos)
  return;

 difference = new_capacity - cb->capacity;
 data = (uint8_t *)cb->data + cb->start_pos;
 memmove(data + difference, data, cb->capacity - cb->start_pos);
 cb->start_pos += difference;
}
