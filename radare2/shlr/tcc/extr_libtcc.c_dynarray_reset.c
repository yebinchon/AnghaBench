
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

void dynarray_reset(void *pp, int *n)
{
 void **p;
 for (p = *(void ***) pp; *n; ++p, --*n) {
  if (*p) {
   free (*p);
  }
 }
 free (*(void **) pp);
 *(void **) pp = ((void*)0);
}
