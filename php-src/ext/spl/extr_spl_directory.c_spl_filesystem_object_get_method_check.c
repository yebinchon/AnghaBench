
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
typedef int zend_function ;
struct TYPE_5__ {int * dirp; } ;
struct TYPE_6__ {TYPE_1__ dir; } ;
struct TYPE_7__ {int * orig_path; TYPE_2__ u; } ;
typedef TYPE_3__ spl_filesystem_object ;


 TYPE_3__* spl_filesystem_from_obj (int *) ;
 int * zend_std_get_method (int **,int *,int const*) ;
 int * zend_string_init (char*,int,int ) ;
 int zend_string_release_ex (int *,int ) ;

zend_function *spl_filesystem_object_get_method_check(zend_object **object, zend_string *method, const zval *key)
{
 spl_filesystem_object *fsobj = spl_filesystem_from_obj(*object);

 if (fsobj->u.dir.dirp == ((void*)0) && fsobj->orig_path == ((void*)0)) {
  zend_function *func;
  zend_string *tmp = zend_string_init("_bad_state_ex", sizeof("_bad_state_ex") - 1, 0);
  func = zend_std_get_method(object, tmp, ((void*)0));
  zend_string_release_ex(tmp, 0);
  return func;
 }

 return zend_std_get_method(object, method, key);
}
