
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_11__ {scalar_t__ open_mode; } ;
struct TYPE_10__ {scalar_t__ sub_path; } ;
struct TYPE_12__ {TYPE_3__ file; TYPE_2__ dir; } ;
struct TYPE_13__ {int type; scalar_t__ orig_path; TYPE_4__ u; scalar_t__ file_name; scalar_t__ _path; int std; TYPE_1__* oth_handler; } ;
typedef TYPE_5__ spl_filesystem_object ;
struct TYPE_9__ {int (* dtor ) (TYPE_5__*) ;} ;





 int efree (scalar_t__) ;
 int spl_filesystem_file_free_line (TYPE_5__*) ;
 TYPE_5__* spl_filesystem_from_obj (int *) ;
 int stub1 (TYPE_5__*) ;
 int zend_object_std_dtor (int *) ;

__attribute__((used)) static void spl_filesystem_object_free_storage(zend_object *object)
{
 spl_filesystem_object *intern = spl_filesystem_from_obj(object);

 if (intern->oth_handler && intern->oth_handler->dtor) {
  intern->oth_handler->dtor(intern);
 }

 zend_object_std_dtor(&intern->std);

 if (intern->_path) {
  efree(intern->_path);
 }
 if (intern->file_name) {
  efree(intern->file_name);
 }
 switch(intern->type) {
 case 128:
  break;
 case 130:
  if (intern->u.dir.sub_path) {
   efree(intern->u.dir.sub_path);
  }
  break;
 case 129:
  if (intern->u.file.open_mode) {
   efree(intern->u.file.open_mode);
  }
  if (intern->orig_path) {
   efree(intern->orig_path);
  }
  spl_filesystem_file_free_line(intern);
  break;
 }
}
