
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {scalar_t__ num; scalar_t__ capacity; int * array; } ;


 int darray_free (struct darray*) ;
 int memcpy (struct darray*,struct darray*,int) ;

__attribute__((used)) static inline void darray_move(struct darray *dst, struct darray *src)
{
 darray_free(dst);
 memcpy(dst, src, sizeof(struct darray));
 src->array = ((void*)0);
 src->capacity = 0;
 src->num = 0;
}
