
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_uchar ;
typedef int zend_long ;
typedef int int32_t ;
typedef char UChar ;


 scalar_t__ ERANGE ;
 int E_NOTICE ;
 int IS_DOUBLE ;
 int IS_LONG ;
 double collator_u_strtod (char*,char**) ;
 int collator_u_strtol (char*,char**,int) ;
 scalar_t__ errno ;
 int zend_error (int ,char*) ;
 int zend_finite (double) ;

zend_uchar collator_is_numeric( UChar *str, int32_t length, zend_long *lval, double *dval, int allow_errors )
{
 zend_long local_lval;
 double local_dval;
 UChar *end_ptr_long, *end_ptr_double;
 int conv_base=10;

 if (!length) {
  return 0;
 }


 if (length>=2 && str[0]=='0' && (str[1]=='x' || str[1]=='X')) {
  conv_base=16;
 }

 errno=0;
 local_lval = collator_u_strtol(str, &end_ptr_long, conv_base);
 if (errno != ERANGE) {
  if (end_ptr_long == str+length) {
   if (lval) {
    *lval = local_lval;
   }
   return IS_LONG;
  } else if (end_ptr_long == str && *end_ptr_long != '\0' && *str != '.' && *str != '-') {
   return 0;
  }
 } else {
  end_ptr_long = ((void*)0);
 }

 if (conv_base == 16) {

  return 0;
 }

 local_dval = collator_u_strtod(str, &end_ptr_double);
 if (local_dval == 0 && end_ptr_double == str) {
  end_ptr_double = ((void*)0);
 } else {
  if (end_ptr_double == str+length) {
   if (!zend_finite(local_dval)) {

    return 0;
   }

   if (dval) {
    *dval = local_dval;
   }
   return IS_DOUBLE;
  }
 }

 if (!allow_errors) {
  return 0;
 }
 if (allow_errors == -1) {
  zend_error(E_NOTICE, "A non well formed numeric value encountered");
 }

 if (allow_errors) {
  if (end_ptr_double > end_ptr_long && dval) {
   *dval = local_dval;
   return IS_DOUBLE;
  } else if (end_ptr_long && lval) {
   *lval = local_lval;
   return IS_LONG;
  }
 }
 return 0;
}
