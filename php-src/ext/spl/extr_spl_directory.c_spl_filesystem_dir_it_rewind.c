
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_6__ {scalar_t__ dirp; scalar_t__ index; } ;
struct TYPE_7__ {TYPE_1__ dir; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
typedef TYPE_3__ spl_filesystem_object ;
typedef int spl_filesystem_iterator ;


 int php_stream_rewinddir (scalar_t__) ;
 int spl_filesystem_dir_read (TYPE_3__*) ;
 TYPE_3__* spl_filesystem_iterator_to_object (int *) ;

__attribute__((used)) static void spl_filesystem_dir_it_rewind(zend_object_iterator *iter)
{
 spl_filesystem_object *object = spl_filesystem_iterator_to_object((spl_filesystem_iterator *)iter);

 object->u.dir.index = 0;
 if (object->u.dir.dirp) {
  php_stream_rewinddir(object->u.dir.dirp);
 }
 spl_filesystem_dir_read(object);
}
