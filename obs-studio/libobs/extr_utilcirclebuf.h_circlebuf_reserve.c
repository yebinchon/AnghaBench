
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct circlebuf {size_t capacity; int data; } ;


 int brealloc (int ,size_t) ;
 int circlebuf_reorder_data (struct circlebuf*,size_t) ;

__attribute__((used)) static inline void circlebuf_reserve(struct circlebuf *cb, size_t capacity)
{
 if (capacity <= cb->capacity)
  return;

 cb->data = brealloc(cb->data, capacity);
 circlebuf_reorder_data(cb, capacity);
 cb->capacity = capacity;
}
