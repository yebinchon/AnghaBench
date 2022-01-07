
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; } ;
typedef TYPE_2__ pdo_stmt_t ;


 int object_properties_init (TYPE_1__*,int *) ;
 int pdo_dbstmt_object_handlers ;
 TYPE_2__* zend_object_alloc (int,int *) ;
 int zend_object_std_init (TYPE_1__*,int *) ;

zend_object *pdo_dbstmt_new(zend_class_entry *ce)
{
 pdo_stmt_t *stmt;

 stmt = zend_object_alloc(sizeof(pdo_stmt_t), ce);
 zend_object_std_init(&stmt->std, ce);
 object_properties_init(&stmt->std, ce);

 stmt->std.handlers = &pdo_dbstmt_object_handlers;

 return &stmt->std;
}
