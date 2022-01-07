
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {int size; int capacity; int data; } ;


 int brealloc (int ,size_t) ;
 int circlebuf_reorder_data (struct circlebuf*,size_t) ;

__attribute__((used)) static inline void circlebuf_ensure_capacity(struct circlebuf *cb)
{
 size_t new_capacity;
 if (cb->size <= cb->capacity)
  return;

 new_capacity = cb->capacity * 2;
 if (cb->size > new_capacity)
  new_capacity = cb->size;

 cb->data = brealloc(cb->data, new_capacity);
 circlebuf_reorder_data(cb, new_capacity);
 cb->capacity = new_capacity;
}
