
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct darray {scalar_t__ array; } ;



__attribute__((used)) static inline void *darray_item(const size_t element_size,
    const struct darray *da, size_t idx)
{
 return (void *)(((uint8_t *)da->array) + element_size * idx);
}
