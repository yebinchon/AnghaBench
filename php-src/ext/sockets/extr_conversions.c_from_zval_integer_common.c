
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
typedef int zend_long ;
struct TYPE_5__ {int has_error; } ;
struct TYPE_6__ {TYPE_1__ err; } ;
typedef TYPE_2__ ser_context ;






 int ZVAL_COPY (int *,int *) ;
 int ZVAL_DOUBLE (int *,double) ;
 int ZVAL_LONG (int *,int ) ;
 int ZVAL_NULL (int *) ;
 int Z_LVAL_P (int const*) ;
 int Z_STRLEN (int ) ;
 int Z_STRVAL (int ) ;
 char* Z_STRVAL_P (int const*) ;
 int Z_TYPE_P (int const*) ;
 int convert_to_long (int *) ;
 int do_from_zval_err (TYPE_2__*,char*,char*) ;
 int is_numeric_string (int ,int ,int *,double*,int ) ;
 int try_convert_to_string (int *) ;
 int zval_ptr_dtor (int *) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static zend_long from_zval_integer_common(const zval *arr_value, ser_context *ctx)
{
 zend_long ret = 0;
 zval lzval;

 ZVAL_NULL(&lzval);
 if (Z_TYPE_P(arr_value) != 130) {
  ZVAL_COPY(&lzval, (zval *)arr_value);
  arr_value = &lzval;
 }

 switch (Z_TYPE_P(arr_value)) {
 case 130:
long_case:
  ret = Z_LVAL_P(arr_value);
  break;


 case 131:
double_case:
  convert_to_long(&lzval);
  goto long_case;

 case 129:
 case 128: {
  zend_long lval;
  double dval;

  if (!try_convert_to_string(&lzval)) {
   ctx->err.has_error = 1;
   break;
  }

  switch (is_numeric_string(Z_STRVAL(lzval), Z_STRLEN(lzval), &lval, &dval, 0)) {
  case 131:
   zval_ptr_dtor_str(&lzval);
   ZVAL_DOUBLE(&lzval, dval);
   goto double_case;

  case 130:
   zval_ptr_dtor_str(&lzval);
   ZVAL_LONG(&lzval, lval);
   goto long_case;
  }


  do_from_zval_err(ctx, "expected an integer, but got a non numeric "
    "string (possibly from a converted object): '%s'", Z_STRVAL_P(arr_value));
  break;
 }

 default:
  do_from_zval_err(ctx, "%s", "expected an integer, either of a PHP "
    "integer type or of a convertible type");
  break;
 }

 zval_ptr_dtor(&lzval);

 return ret;
}
