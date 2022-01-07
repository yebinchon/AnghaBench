
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {int ce; } ;
typedef TYPE_5__ zend_object ;
struct TYPE_18__ {int d_name; } ;
struct TYPE_19__ {int index; TYPE_1__ entry; } ;
struct TYPE_20__ {TYPE_2__ dir; } ;
struct TYPE_23__ {int type; TYPE_4__* oth_handler; int oth; int info_class; int file_class; TYPE_3__ u; int flags; void* _path; int file_name_len; void* file_name; int _path_len; } ;
typedef TYPE_6__ spl_filesystem_object ;
struct TYPE_21__ {int (* clone ) (TYPE_6__*,TYPE_6__*) ;} ;


 int SPL_FILE_DIR_SKIPDOTS ;



 int SPL_HAS_FLAG (int ,int ) ;
 int ZEND_ASSERT (int ) ;
 void* estrndup (void*,int ) ;
 int spl_filesystem_dir_open (TYPE_6__*,void*) ;
 int spl_filesystem_dir_read (TYPE_6__*) ;
 TYPE_6__* spl_filesystem_from_obj (TYPE_5__*) ;
 int spl_filesystem_is_dot (int ) ;
 TYPE_5__* spl_filesystem_object_new_ex (int ) ;
 int stub1 (TYPE_6__*,TYPE_6__*) ;
 int zend_objects_clone_members (TYPE_5__*,TYPE_5__*) ;

__attribute__((used)) static zend_object *spl_filesystem_object_clone(zend_object *old_object)
{
 zend_object *new_object;
 spl_filesystem_object *intern;
 spl_filesystem_object *source;
 int index, skip_dots;

 source = spl_filesystem_from_obj(old_object);
 new_object = spl_filesystem_object_new_ex(old_object->ce);
 intern = spl_filesystem_from_obj(new_object);

 intern->flags = source->flags;

 switch (source->type) {
  case 128:
   intern->_path_len = source->_path_len;
   intern->_path = estrndup(source->_path, source->_path_len);
   intern->file_name_len = source->file_name_len;
   intern->file_name = estrndup(source->file_name, intern->file_name_len);
   break;
  case 130:
   spl_filesystem_dir_open(intern, source->_path);

   skip_dots = SPL_HAS_FLAG(source->flags, SPL_FILE_DIR_SKIPDOTS);
   for(index = 0; index < source->u.dir.index; ++index) {
    do {
     spl_filesystem_dir_read(intern);
    } while (skip_dots && spl_filesystem_is_dot(intern->u.dir.entry.d_name));
   }
   intern->u.dir.index = index;
   break;
  case 129:
   ZEND_ASSERT(0);
 }

 intern->file_class = source->file_class;
 intern->info_class = source->info_class;
 intern->oth = source->oth;
 intern->oth_handler = source->oth_handler;

 zend_objects_clone_members(new_object, old_object);

 if (intern->oth_handler && intern->oth_handler->clone) {
  intern->oth_handler->clone(source, intern);
 }

 return new_object;
}
