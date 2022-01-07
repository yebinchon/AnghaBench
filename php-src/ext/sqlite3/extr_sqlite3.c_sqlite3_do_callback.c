
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_4__ {int size; int param_count; int * params; int * retval; int * object; int function_name; } ;
struct php_sqlite3_fci {int fcc; TYPE_2__ fci; } ;
typedef int sqlite3_value ;
typedef int sqlite3_context ;
struct TYPE_3__ {int zval_context; int row_count; } ;
typedef TYPE_1__ php_sqlite3_agg_context ;


 int E_WARNING ;
 int FAILURE ;
 int SQLITE_TRANSIENT ;
 int UNEXPECTED (int) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_COPY (int *,int *) ;
 int ZVAL_COPY_VALUE (int *,int *) ;
 int ZVAL_DOUBLE (int *,int ) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STRINGL (int *,char*,int ) ;
 int ZVAL_UNDEF (int *) ;
 int Z_DVAL (int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 int Z_LVAL (int ) ;
 int Z_TYPE (int ) ;
 int efree (int *) ;
 int php_error_docref (int *,int ,char*) ;
 scalar_t__ safe_emalloc (int,int,int ) ;
 scalar_t__ sqlite3_aggregate_context (int *,int) ;
 int sqlite3_result_double (int *,int ) ;
 int sqlite3_result_error (int *,char*,int ) ;
 int sqlite3_result_int (int *,int ) ;
 int sqlite3_result_int64 (int *,int ) ;
 int sqlite3_result_null (int *) ;
 int sqlite3_result_text (int *,int ,int ,int ) ;
 int sqlite3_value_bytes (int *) ;
 int sqlite3_value_double (int *) ;
 int sqlite3_value_int (int *) ;
 int sqlite3_value_int64 (int *) ;
 scalar_t__ sqlite3_value_text (int *) ;
 int sqlite3_value_type (int *) ;
 int zend_call_function (TYPE_2__*,int *) ;
 int zend_string_release (int *) ;
 int zval_ptr_dtor (int *) ;
 int * zval_try_get_string (int *) ;

__attribute__((used)) static int sqlite3_do_callback(struct php_sqlite3_fci *fc, zval *cb, int argc, sqlite3_value **argv, sqlite3_context *context, int is_agg)
{
 zval *zargs = ((void*)0);
 zval retval;
 int i;
 int ret;
 int fake_argc;
 php_sqlite3_agg_context *agg_context = ((void*)0);

 if (is_agg) {
  is_agg = 2;
 }

 fake_argc = argc + is_agg;

 fc->fci.size = sizeof(fc->fci);
 ZVAL_COPY_VALUE(&fc->fci.function_name, cb);
 fc->fci.object = ((void*)0);
 fc->fci.retval = &retval;
 fc->fci.param_count = fake_argc;



 if (fake_argc) {
  zargs = (zval *)safe_emalloc(fake_argc, sizeof(zval), 0);
 }

 if (is_agg) {

  agg_context = (php_sqlite3_agg_context *)sqlite3_aggregate_context(context, sizeof(php_sqlite3_agg_context));

  if (Z_ISUNDEF(agg_context->zval_context)) {
   ZVAL_NULL(&agg_context->zval_context);
  }
  ZVAL_COPY(&zargs[0], &agg_context->zval_context);
  ZVAL_LONG(&zargs[1], agg_context->row_count);
 }

 for (i = 0; i < argc; i++) {
  switch (sqlite3_value_type(argv[i])) {
   case 129:



    ZVAL_LONG(&zargs[i + is_agg], sqlite3_value_int(argv[i]));

    break;

   case 130:
    ZVAL_DOUBLE(&zargs[i + is_agg], sqlite3_value_double(argv[i]));
    break;

   case 128:
    ZVAL_NULL(&zargs[i + is_agg]);
    break;

   case 131:
   case 132:
   default:
    ZVAL_STRINGL(&zargs[i + is_agg], (char*)sqlite3_value_text(argv[i]), sqlite3_value_bytes(argv[i]));
    break;
  }
 }

 fc->fci.params = zargs;

 if ((ret = zend_call_function(&fc->fci, &fc->fcc)) == FAILURE) {
  php_error_docref(((void*)0), E_WARNING, "An error occurred while invoking the callback");
 }

 if (is_agg) {
  zval_ptr_dtor(&zargs[0]);
 }


 if (fake_argc) {
  for (i = is_agg; i < argc + is_agg; i++) {
   zval_ptr_dtor(&zargs[i]);
  }
  if (is_agg) {
   zval_ptr_dtor(&zargs[1]);
  }
  efree(zargs);
 }

 if (!is_agg || !argv) {


  if (!Z_ISUNDEF(retval)) {
   switch (Z_TYPE(retval)) {
    case 134:



     sqlite3_result_int(context, Z_LVAL(retval));

     break;

    case 133:
     sqlite3_result_null(context);
     break;

    case 135:
     sqlite3_result_double(context, Z_DVAL(retval));
     break;

    default: {
     zend_string *str = zval_try_get_string(&retval);
     if (UNEXPECTED(!str)) {
      ret = FAILURE;
      break;
     }
     sqlite3_result_text(context, ZSTR_VAL(str), ZSTR_LEN(str), SQLITE_TRANSIENT);
     zend_string_release(str);
     break;
    }
   }
  } else {
   sqlite3_result_error(context, "failed to invoke callback", 0);
  }

  if (agg_context && !Z_ISUNDEF(agg_context->zval_context)) {
   zval_ptr_dtor(&agg_context->zval_context);
  }
 } else {


  if (agg_context && !Z_ISUNDEF(agg_context->zval_context)) {
   zval_ptr_dtor(&agg_context->zval_context);
  }
  ZVAL_COPY_VALUE(&agg_context->zval_context, &retval);
  ZVAL_UNDEF(&retval);
 }

 if (!Z_ISUNDEF(retval)) {
  zval_ptr_dtor(&retval);
 }
 return ret;
}
