
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_4__ {int size; int param_count; int * params; int * retval; int * object; int function_name; } ;
struct TYPE_3__ {int fcc; TYPE_2__ fci; } ;
struct pdo_sqlite_collation {TYPE_1__ fc; int callback; } ;


 int E_WARNING ;
 int FAILURE ;
 scalar_t__ IS_LONG ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_STRINGL (int *,char*,int) ;
 int Z_ISUNDEF (int ) ;
 scalar_t__ Z_LVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int convert_to_long_ex (int *) ;
 int php_error_docref (int *,int ,char*) ;
 int zend_call_function (TYPE_2__*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int php_sqlite3_collation_callback(void *context,
 int string1_len, const void *string1,
 int string2_len, const void *string2)
{
 int ret;
 zval zargs[2];
 zval retval;
 struct pdo_sqlite_collation *collation = (struct pdo_sqlite_collation*) context;

 collation->fc.fci.size = sizeof(collation->fc.fci);
 ZVAL_COPY_VALUE(&collation->fc.fci.function_name, &collation->callback);
 collation->fc.fci.object = ((void*)0);
 collation->fc.fci.retval = &retval;


 ZVAL_STRINGL(&zargs[0], (char *) string1, string1_len);
 ZVAL_STRINGL(&zargs[1], (char *) string2, string2_len);
 collation->fc.fci.param_count = 2;
 collation->fc.fci.params = zargs;

 if ((ret = zend_call_function(&collation->fc.fci, &collation->fc.fcc)) == FAILURE) {
  php_error_docref(((void*)0), E_WARNING, "An error occurred while invoking the callback");
 } else if (!Z_ISUNDEF(retval)) {
  if (Z_TYPE(retval) != IS_LONG) {
   convert_to_long_ex(&retval);
  }
  ret = 0;
  if (Z_LVAL(retval) > 0) {
   ret = 1;
  } else if (Z_LVAL(retval) < 0) {
   ret = -1;
  }
  zval_ptr_dtor(&retval);
 }

 zval_ptr_dtor(&zargs[0]);
 zval_ptr_dtor(&zargs[1]);

 return ret;
}
