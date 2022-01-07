
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct darray {int dummy; } ;


 void* darray_item (size_t const,struct darray*,size_t const) ;
 int free (void*) ;
 void* malloc (size_t const) ;
 int memcpy (void*,void*,size_t const) ;
 int memmove (void*,void*,size_t const) ;

__attribute__((used)) static inline void darray_move_item(const size_t element_size,
        struct darray *dst, const size_t from,
        const size_t to)
{
 void *temp, *p_from, *p_to;

 if (from == to)
  return;

 temp = malloc(element_size);
 p_from = darray_item(element_size, dst, from);
 p_to = darray_item(element_size, dst, to);

 memcpy(temp, p_from, element_size);

 if (to < from)
  memmove(darray_item(element_size, dst, to + 1), p_to,
   element_size * (from - to));
 else
  memmove(p_from, darray_item(element_size, dst, from + 1),
   element_size * (to - from));

 memcpy(p_to, temp, element_size);
 free(temp);
}
