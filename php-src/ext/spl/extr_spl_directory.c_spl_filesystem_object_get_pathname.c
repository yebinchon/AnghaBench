
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * d_name; } ;
struct TYPE_8__ {TYPE_1__ entry; } ;
struct TYPE_9__ {TYPE_2__ dir; } ;
struct TYPE_10__ {int type; size_t file_name_len; char* file_name; TYPE_3__ u; } ;
typedef TYPE_4__ spl_filesystem_object ;





 int spl_filesystem_object_get_file_name (TYPE_4__*) ;

__attribute__((used)) static char *spl_filesystem_object_get_pathname(spl_filesystem_object *intern, size_t *len) {
 switch (intern->type) {
  case 128:
  case 129:
   *len = intern->file_name_len;
   return intern->file_name;
  case 130:
   if (intern->u.dir.entry.d_name[0]) {
    spl_filesystem_object_get_file_name(intern);
    *len = intern->file_name_len;
    return intern->file_name;
   }
 }
 *len = 0;
 return ((void*)0);
}
