
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_4__ {TYPE_1__* stmt; } ;
typedef TYPE_2__ pdo_row_t ;
struct TYPE_3__ {int std; int lazy_object_ref; } ;


 int OBJ_RELEASE (int *) ;
 int ZVAL_UNDEF (int *) ;

void pdo_row_free_storage(zend_object *std)
{
 pdo_row_t *row = (pdo_row_t *)std;
 if (row->stmt) {
  ZVAL_UNDEF(&row->stmt->lazy_object_ref);
  OBJ_RELEASE(&row->stmt->std);
 }
}
