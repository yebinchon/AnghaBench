
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int stmt_obj_zval; TYPE_1__* stmt_obj; } ;
typedef TYPE_2__ php_sqlite3_free_list ;
struct TYPE_4__ {scalar_t__ initialised; } ;


 scalar_t__ Z_PTR (int ) ;
 scalar_t__ Z_PTR_P (int *) ;

__attribute__((used)) static int php_sqlite3_compare_stmt_zval_free(php_sqlite3_free_list **free_list, zval *statement )
{
 return ((*free_list)->stmt_obj->initialised && Z_PTR_P(statement) == Z_PTR((*free_list)->stmt_obj_zval));
}
