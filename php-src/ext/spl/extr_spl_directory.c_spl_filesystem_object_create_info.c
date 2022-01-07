
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zval ;
typedef int zend_error_handling ;
struct TYPE_14__ {TYPE_6__* constructor; } ;
typedef TYPE_2__ zend_class_entry ;
struct TYPE_15__ {int std; TYPE_2__* info_class; } ;
typedef TYPE_3__ spl_filesystem_object ;
struct TYPE_13__ {scalar_t__ scope; } ;
struct TYPE_16__ {TYPE_1__ common; } ;


 int EH_THROW ;
 int ZVAL_OBJ (int *,int *) ;
 int ZVAL_STRINGL (int *,char*,size_t) ;
 int Z_OBJ_P (int *) ;
 int efree (char*) ;
 int spl_ce_RuntimeException ;
 scalar_t__ spl_ce_SplFileInfo ;
 TYPE_3__* spl_filesystem_from_obj (int ) ;
 int spl_filesystem_info_set_filename (TYPE_3__*,char*,size_t,int) ;
 int spl_filesystem_object_new_ex (TYPE_2__*) ;
 int zend_call_method_with_1_params (int ,TYPE_2__*,TYPE_6__**,char*,int *,int *) ;
 int zend_replace_error_handling (int ,int ,int *) ;
 int zend_restore_error_handling (int *) ;
 int zend_throw_exception_ex (int ,int ,char*) ;
 int zend_update_class_constants (TYPE_2__*) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static spl_filesystem_object *spl_filesystem_object_create_info(spl_filesystem_object *source, char *file_path, size_t file_path_len, int use_copy, zend_class_entry *ce, zval *return_value)
{
 spl_filesystem_object *intern;
 zval arg1;
 zend_error_handling error_handling;

 if (!file_path || !file_path_len) {






  if (file_path && !use_copy) {
   efree(file_path);
  }
  file_path_len = 1;
  file_path = "/";

  return ((void*)0);
 }

 zend_replace_error_handling(EH_THROW, spl_ce_RuntimeException, &error_handling);

 ce = ce ? ce : source->info_class;

 zend_update_class_constants(ce);

 intern = spl_filesystem_from_obj(spl_filesystem_object_new_ex(ce));
 ZVAL_OBJ(return_value, &intern->std);

 if (ce->constructor->common.scope != spl_ce_SplFileInfo) {
  ZVAL_STRINGL(&arg1, file_path, file_path_len);
  zend_call_method_with_1_params(Z_OBJ_P(return_value), ce, &ce->constructor, "__construct", ((void*)0), &arg1);
  zval_ptr_dtor(&arg1);
 } else {
  spl_filesystem_info_set_filename(intern, file_path, file_path_len, use_copy);
 }

 zend_restore_error_handling(&error_handling);
 return intern;
}
