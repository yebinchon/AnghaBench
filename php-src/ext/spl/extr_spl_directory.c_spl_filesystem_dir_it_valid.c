
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_6__ {char* d_name; } ;
struct TYPE_7__ {TYPE_1__ entry; } ;
struct TYPE_8__ {TYPE_2__ dir; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
typedef TYPE_4__ spl_filesystem_object ;
typedef int spl_filesystem_iterator ;


 int FAILURE ;
 int SUCCESS ;
 TYPE_4__* spl_filesystem_iterator_to_object (int *) ;

__attribute__((used)) static int spl_filesystem_dir_it_valid(zend_object_iterator *iter)
{
 spl_filesystem_object *object = spl_filesystem_iterator_to_object((spl_filesystem_iterator *)iter);

 return object->u.dir.entry.d_name[0] != '\0' ? SUCCESS : FAILURE;
}
