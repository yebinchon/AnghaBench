
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int num; } ;


 void* darray_end (size_t const,struct darray*) ;
 int darray_ensure_capacity (size_t const,struct darray*,int ) ;
 int memset (void*,int ,size_t const) ;

__attribute__((used)) static inline void *darray_push_back_new(const size_t element_size,
      struct darray *dst)
{
 void *last;

 darray_ensure_capacity(element_size, dst, ++dst->num);

 last = darray_end(element_size, dst);
 memset(last, 0, element_size);
 return last;
}
