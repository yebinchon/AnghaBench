
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_6__ {int index; } ;
struct TYPE_7__ {TYPE_1__ dir; } ;
struct TYPE_8__ {int * file_name; TYPE_2__ u; } ;
typedef TYPE_3__ spl_filesystem_object ;
typedef int spl_filesystem_iterator ;


 int efree (int *) ;
 int spl_filesystem_dir_read (TYPE_3__*) ;
 TYPE_3__* spl_filesystem_iterator_to_object (int *) ;

__attribute__((used)) static void spl_filesystem_dir_it_move_forward(zend_object_iterator *iter)
{
 spl_filesystem_object *object = spl_filesystem_iterator_to_object((spl_filesystem_iterator *)iter);

 object->u.dir.index++;
 spl_filesystem_dir_read(object);
 if (object->file_name) {
  efree(object->file_name);
  object->file_name = ((void*)0);
 }
}
