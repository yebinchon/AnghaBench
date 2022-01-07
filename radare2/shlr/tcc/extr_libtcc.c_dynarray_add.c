
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void** realloc (void**,int) ;

void dynarray_add(void ***ptab, int *nb_ptr, void *data)
{
 int nb, nb_alloc;
 void **pp;

 nb = *nb_ptr;
 pp = *ptab;

 if ((nb & (nb - 1)) == 0) {
  if (!nb) {
   nb_alloc = 1;
  } else {
   nb_alloc = nb * 2;
  }
  pp = realloc (pp, nb_alloc * sizeof(void *));
  *ptab = pp;
 }
 pp[nb++] = data;
 *nb_ptr = nb;
}
