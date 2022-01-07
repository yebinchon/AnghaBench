
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef TYPE_1__ pdo_stmt_t ;
struct TYPE_5__ {int * name; } ;
typedef TYPE_2__ pdo_firebird_stmt ;



 int ZVAL_NULL (int *) ;
 int ZVAL_STRING (int *,int *) ;

__attribute__((used)) static int firebird_stmt_get_attribute(pdo_stmt_t *stmt, zend_long attr, zval *val)
{
 pdo_firebird_stmt *S = (pdo_firebird_stmt*)stmt->driver_data;

 switch (attr) {
  default:
   return 0;
  case 128:
   if (*S->name) {
    ZVAL_STRING(val, S->name);
   } else {
    ZVAL_NULL(val);
   }
   break;
 }
 return 1;
}
