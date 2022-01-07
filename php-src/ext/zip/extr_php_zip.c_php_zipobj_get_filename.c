
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* filename; } ;
typedef TYPE_1__ ze_zip_object ;



__attribute__((used)) static char * php_zipobj_get_filename(ze_zip_object *obj)
{

 if (!obj) {
  return ((void*)0);
 }

 if (obj->filename) {
  return obj->filename;
 }
 return ((void*)0);
}
