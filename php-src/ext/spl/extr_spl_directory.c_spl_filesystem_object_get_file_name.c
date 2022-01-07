
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int d_name; } ;
struct TYPE_8__ {TYPE_1__ entry; } ;
struct TYPE_9__ {TYPE_2__ dir; } ;
struct TYPE_10__ {int type; TYPE_3__ u; int file_name; void* file_name_len; int flags; } ;
typedef TYPE_4__ spl_filesystem_object ;


 char DEFAULT_SLASH ;
 int E_ERROR ;
 int SPL_FILE_DIR_UNIXPATHS ;



 scalar_t__ SPL_HAS_FLAG (int ,int ) ;
 int efree (int ) ;
 int php_error_docref (int *,int ,char*) ;
 char* spl_filesystem_object_get_path (TYPE_4__*,size_t*) ;
 void* spprintf (int *,int ,char*,char*,...) ;

__attribute__((used)) static inline void spl_filesystem_object_get_file_name(spl_filesystem_object *intern)
{
 char slash = SPL_HAS_FLAG(intern->flags, SPL_FILE_DIR_UNIXPATHS) ? '/' : DEFAULT_SLASH;

 switch (intern->type) {
  case 128:
  case 129:
   if (!intern->file_name) {
    php_error_docref(((void*)0), E_ERROR, "Object not initialized");
   }
   break;
  case 130:
   {
    size_t path_len = 0;
    char *path = spl_filesystem_object_get_path(intern, &path_len);
    if (intern->file_name) {
     efree(intern->file_name);
    }

    if (path_len == 0) {
     intern->file_name_len = spprintf(
      &intern->file_name, 0, "%s", intern->u.dir.entry.d_name);
    } else {
     intern->file_name_len = spprintf(
      &intern->file_name, 0, "%s%c%s", path, slash, intern->u.dir.entry.d_name);
    }
   }
   break;
 }
}
