
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_long ;
typedef int zend_bool ;
typedef int mpz_t ;


 int E_WARNING ;
 int FAILURE ;




 int SUCCESS ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int mpz_set_si (int ,int ) ;
 int mpz_set_str (int ,char*,int) ;
 int php_error_docref (int *,int ,char*) ;
 int zval_get_long (int *) ;

__attribute__((used)) static int convert_to_gmp(mpz_t gmpnumber, zval *val, zend_long base)
{
 switch (Z_TYPE_P(val)) {
 case 130:
 case 131:
 case 128: {
  mpz_set_si(gmpnumber, zval_get_long(val));
  return SUCCESS;
 }
 case 129: {
  char *numstr = Z_STRVAL_P(val);
  zend_bool skip_lead = 0;
  int ret;

  if (Z_STRLEN_P(val) > 2 && numstr[0] == '0') {
   if ((base == 0 || base == 16) && (numstr[1] == 'x' || numstr[1] == 'X')) {
    base = 16;
    skip_lead = 1;
   } else if ((base == 0 || base == 2) && (numstr[1] == 'b' || numstr[1] == 'B')) {
    base = 2;
    skip_lead = 1;
   }
  }

  ret = mpz_set_str(gmpnumber, (skip_lead ? &numstr[2] : numstr), (int) base);
  if (-1 == ret) {
   php_error_docref(((void*)0), E_WARNING,
    "Unable to convert variable to GMP - string is not an integer");
   return FAILURE;
  }

  return SUCCESS;
 }
 default:
  php_error_docref(((void*)0), E_WARNING,
   "Unable to convert variable to GMP - wrong type");
  return FAILURE;
 }
}
