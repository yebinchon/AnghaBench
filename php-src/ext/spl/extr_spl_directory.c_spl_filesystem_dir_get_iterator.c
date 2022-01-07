
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int * funcs; int data; } ;
typedef TYPE_1__ zend_object_iterator ;
typedef int zend_class_entry ;
typedef int spl_filesystem_object ;
struct TYPE_6__ {TYPE_1__ intern; int current; } ;
typedef TYPE_2__ spl_filesystem_iterator ;


 int ZVAL_OBJ (int *,int ) ;
 int Z_ADDREF_P (int *) ;
 int Z_OBJ_P (int *) ;
 int * Z_SPLFILESYSTEM_P (int *) ;
 int spl_ce_RuntimeException ;
 int spl_filesystem_dir_it_funcs ;
 TYPE_2__* spl_filesystem_object_to_iterator (int *) ;
 int zend_throw_exception (int ,char*,int ) ;

zend_object_iterator *spl_filesystem_dir_get_iterator(zend_class_entry *ce, zval *object, int by_ref)
{
 spl_filesystem_iterator *iterator;
 spl_filesystem_object *dir_object;

 if (by_ref) {
  zend_throw_exception(spl_ce_RuntimeException, "An iterator cannot be used with foreach by reference", 0);
  return ((void*)0);
 }
 dir_object = Z_SPLFILESYSTEM_P(object);
 iterator = spl_filesystem_object_to_iterator(dir_object);
 Z_ADDREF_P(object);
 ZVAL_OBJ(&iterator->intern.data, Z_OBJ_P(object));
 iterator->intern.funcs = &spl_filesystem_dir_it_funcs;


 iterator->current = *object;

 return &iterator->intern;
}
