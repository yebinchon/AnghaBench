
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_9__ {TYPE_6__* stream; } ;
struct TYPE_8__ {TYPE_6__* dirp; } ;
struct TYPE_10__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_11__ {int type; TYPE_3__ u; } ;
typedef TYPE_4__ spl_filesystem_object ;
struct TYPE_12__ {int is_persistent; } ;




 int php_stream_close (TYPE_6__*) ;
 int php_stream_pclose (TYPE_6__*) ;
 TYPE_4__* spl_filesystem_from_obj (int *) ;
 int zend_objects_destroy_object (int *) ;

__attribute__((used)) static void spl_filesystem_object_destroy_object(zend_object *object)
{
 spl_filesystem_object *intern = spl_filesystem_from_obj(object);

 zend_objects_destroy_object(object);

 switch(intern->type) {
 case 129:
  if (intern->u.dir.dirp) {
   php_stream_close(intern->u.dir.dirp);
   intern->u.dir.dirp = ((void*)0);
  }
  break;
 case 128:
  if (intern->u.file.stream) {





   if (!intern->u.file.stream->is_persistent) {
    php_stream_close(intern->u.file.stream);
   } else {
    php_stream_pclose(intern->u.file.stream);
   }
   intern->u.file.stream = ((void*)0);
  }
  break;
 default:
  break;
 }
}
