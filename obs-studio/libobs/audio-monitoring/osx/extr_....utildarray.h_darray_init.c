
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {scalar_t__ capacity; scalar_t__ num; int * array; } ;



__attribute__((used)) static inline void darray_init(struct darray *dst)
{
 dst->array = ((void*)0);
 dst->num = 0;
 dst->capacity = 0;
}
