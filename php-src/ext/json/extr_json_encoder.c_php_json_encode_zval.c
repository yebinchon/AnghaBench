
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
typedef int smart_str ;
struct TYPE_6__ {int error_code; } ;
typedef TYPE_1__ php_json_encoder ;


 int FAILURE ;
 int PHP_JSON_ERROR_INF_OR_NAN ;
 int PHP_JSON_ERROR_UNSUPPORTED_TYPE ;
 int PHP_JSON_PARTIAL_OUTPUT_ON_ERROR ;
 int SUCCESS ;
 int ZVAL_COPY (int *,int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_OBJCE_P (int *) ;
 int * Z_REFVAL_P (int *) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int instanceof_function (int ,int ) ;
 int php_json_encode_array (int *,int *,int,TYPE_1__*) ;
 int php_json_encode_double (int *,int ,int) ;
 int php_json_encode_serializable_object (int *,int *,int,TYPE_1__*) ;
 int php_json_escape_string (int *,int ,int ,int,TYPE_1__*) ;
 int php_json_is_valid_double (int ) ;
 int php_json_serializable_ce ;
 int smart_str_append_long (int *,int ) ;
 int smart_str_appendc (int *,int ) ;
 int smart_str_appendl (int *,char*,int) ;
 int zval_ptr_dtor_nogc (int *) ;

int php_json_encode_zval(smart_str *buf, zval *val, int options, php_json_encoder *encoder)
{
again:
 switch (Z_TYPE_P(val))
 {
  case 132:
   smart_str_appendl(buf, "null", 4);
   break;

  case 128:
   smart_str_appendl(buf, "true", 4);
   break;
  case 134:
   smart_str_appendl(buf, "false", 5);
   break;

  case 133:
   smart_str_append_long(buf, Z_LVAL_P(val));
   break;

  case 135:
   if (php_json_is_valid_double(Z_DVAL_P(val))) {
    php_json_encode_double(buf, Z_DVAL_P(val), options);
   } else {
    encoder->error_code = PHP_JSON_ERROR_INF_OR_NAN;
    smart_str_appendc(buf, '0');
   }
   break;

  case 129:
   return php_json_escape_string(buf, Z_STRVAL_P(val), Z_STRLEN_P(val), options, encoder);

  case 131:
   if (instanceof_function(Z_OBJCE_P(val), php_json_serializable_ce)) {
    return php_json_encode_serializable_object(buf, val, options, encoder);
   }

  case 136: {


   zval zv;
   int res;
   ZVAL_COPY(&zv, val);
   res = php_json_encode_array(buf, &zv, options, encoder);
   zval_ptr_dtor_nogc(&zv);
   return res;
  }

  case 130:
   val = Z_REFVAL_P(val);
   goto again;

  default:
   encoder->error_code = PHP_JSON_ERROR_UNSUPPORTED_TYPE;
   if (options & PHP_JSON_PARTIAL_OUTPUT_ON_ERROR) {
    smart_str_appendl(buf, "null", 4);
   }
   return FAILURE;
 }

 return SUCCESS;
}
