
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * indices; } ;
typedef TYPE_1__ php_com_saproxy ;


 int ZVAL_DUP (int *,int *) ;

__attribute__((used)) static inline void clone_indices(php_com_saproxy *dest, php_com_saproxy *src, int ndims)
{
 int i;

 for (i = 0; i < ndims; i++) {
  ZVAL_DUP(&dest->indices[i], &src->indices[i]);
 }
}
