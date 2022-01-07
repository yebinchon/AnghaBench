
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int * elements; } ;
typedef TYPE_1__ spl_fixedarray ;


 int ZVAL_COPY (int *,int *) ;

__attribute__((used)) static void spl_fixedarray_copy(spl_fixedarray *to, spl_fixedarray *from)
{
 int i;
 for (i = 0; i < from->size; i++) {
  ZVAL_COPY(&to->elements[i], &from->elements[i]);
 }
}
