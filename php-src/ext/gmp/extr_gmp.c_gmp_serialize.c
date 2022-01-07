
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_serialize_data ;
struct TYPE_3__ {int s; int member_0; } ;
typedef TYPE_1__ smart_str ;
typedef int php_serialize_data_t ;
typedef int mpz_ptr ;


 int GET_GMP_FROM_ZVAL (int *) ;
 int PHP_VAR_SERIALIZE_DESTROY (int ) ;
 int PHP_VAR_SERIALIZE_INIT (int ) ;
 int SUCCESS ;
 size_t ZSTR_LEN (int ) ;
 int ZSTR_VAL (int ) ;
 int ZVAL_ARR (int *,int ) ;
 int Z_OBJ_P (int *) ;
 scalar_t__ estrndup (int ,size_t) ;
 int gmp_strval (int *,int ,int) ;
 int php_var_serialize (TYPE_1__*,int *,int *) ;
 int zend_std_get_properties (int ) ;
 int zend_string_release_ex (int ,int ) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static int gmp_serialize(zval *object, unsigned char **buffer, size_t *buf_len, zend_serialize_data *data)
{
 mpz_ptr gmpnum = GET_GMP_FROM_ZVAL(object);
 smart_str buf = {0};
 zval zv;
 php_serialize_data_t serialize_data;

 PHP_VAR_SERIALIZE_INIT(serialize_data);

 gmp_strval(&zv, gmpnum, 10);
 php_var_serialize(&buf, &zv, &serialize_data);
 zval_ptr_dtor_str(&zv);

 ZVAL_ARR(&zv, zend_std_get_properties(Z_OBJ_P(object)));
 php_var_serialize(&buf, &zv, &serialize_data);

 PHP_VAR_SERIALIZE_DESTROY(serialize_data);
 *buffer = (unsigned char *) estrndup(ZSTR_VAL(buf.s), ZSTR_LEN(buf.s));
 *buf_len = ZSTR_LEN(buf.s);
 zend_string_release_ex(buf.s, 0);

 return SUCCESS;
}
