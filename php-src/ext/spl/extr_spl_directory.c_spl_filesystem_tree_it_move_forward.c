
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_9__ {int d_name; } ;
struct TYPE_11__ {TYPE_1__ entry; int index; } ;
struct TYPE_10__ {TYPE_3__ dir; } ;
struct TYPE_12__ {int * file_name; TYPE_2__ u; } ;
typedef TYPE_4__ spl_filesystem_object ;
struct TYPE_13__ {int current; } ;
typedef TYPE_5__ spl_filesystem_iterator ;


 int ZVAL_UNDEF (int *) ;
 int Z_ISUNDEF (int ) ;
 int efree (int *) ;
 int spl_filesystem_dir_read (TYPE_4__*) ;
 scalar_t__ spl_filesystem_is_dot (int ) ;
 TYPE_4__* spl_filesystem_iterator_to_object (TYPE_5__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_filesystem_tree_it_move_forward(zend_object_iterator *iter)
{
 spl_filesystem_iterator *iterator = (spl_filesystem_iterator *)iter;
 spl_filesystem_object *object = spl_filesystem_iterator_to_object(iterator);

 object->u.dir.index++;
 do {
  spl_filesystem_dir_read(object);
 } while (spl_filesystem_is_dot(object->u.dir.entry.d_name));
 if (object->file_name) {
  efree(object->file_name);
  object->file_name = ((void*)0);
 }
 if (!Z_ISUNDEF(iterator->current)) {
  zval_ptr_dtor(&iterator->current);
  ZVAL_UNDEF(&iterator->current);
 }
}
