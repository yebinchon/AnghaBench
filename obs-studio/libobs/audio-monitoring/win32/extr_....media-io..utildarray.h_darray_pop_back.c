
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {scalar_t__ num; } ;


 int assert (int) ;
 int darray_erase (size_t const,struct darray*,scalar_t__) ;

__attribute__((used)) static inline void darray_pop_back(const size_t element_size,
       struct darray *dst)
{
 assert(dst->num != 0);

 if (dst->num)
  darray_erase(element_size, dst, dst->num - 1);
}
