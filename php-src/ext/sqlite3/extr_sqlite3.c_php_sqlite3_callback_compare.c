
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int size; int param_count; int * params; int * retval; int * object; int function_name; } ;
struct TYPE_4__ {int fcc; TYPE_3__ fci; } ;
struct TYPE_5__ {TYPE_1__ fci; int cmp_func; } ;
typedef TYPE_2__ php_sqlite3_collation ;


 scalar_t__ EG (int ) ;
 int E_WARNING ;
 int FAILURE ;
 scalar_t__ IS_LONG ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_STRINGL (int *,void const*,int) ;
 int Z_LVAL (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int exception ;
 int php_error_docref (int *,int ,char*) ;
 int zend_call_function (TYPE_3__*,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int php_sqlite3_callback_compare(void *coll, int a_len, const void *a, int b_len, const void* b)
{
 php_sqlite3_collation *collation = (php_sqlite3_collation*)coll;
 zval zargs[2];
 zval retval;
 int ret;


 if (EG(exception)) {
  return 0;
 }

 collation->fci.fci.size = (sizeof(collation->fci.fci));
 ZVAL_COPY_VALUE(&collation->fci.fci.function_name, &collation->cmp_func);
 collation->fci.fci.object = ((void*)0);
 collation->fci.fci.retval = &retval;
 collation->fci.fci.param_count = 2;

 ZVAL_STRINGL(&zargs[0], a, a_len);
 ZVAL_STRINGL(&zargs[1], b, b_len);

 collation->fci.fci.params = zargs;

 if ((ret = zend_call_function(&collation->fci.fci, &collation->fci.fcc)) == FAILURE) {
  php_error_docref(((void*)0), E_WARNING, "An error occurred while invoking the compare callback");
 }

 zval_ptr_dtor(&zargs[0]);
 zval_ptr_dtor(&zargs[1]);

 if (EG(exception)) {
  ret = 0;
 } else if (Z_TYPE(retval) != IS_LONG){



  php_error_docref(((void*)0), E_WARNING, "An error occurred while invoking the compare callback (invalid return type).  Collation behaviour is undefined.");
 } else {
  ret = Z_LVAL(retval);
 }

 zval_ptr_dtor(&retval);

 return ret;
}
