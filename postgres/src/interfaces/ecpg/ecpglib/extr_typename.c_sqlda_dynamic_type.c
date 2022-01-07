
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum COMPAT_MODE { ____Placeholder_COMPAT_MODE } COMPAT_MODE ;
typedef int Oid ;





 int ECPGt_char ;
 int ECPGt_date ;
 int ECPGt_decimal ;
 int ECPGt_double ;
 int ECPGt_float ;
 int ECPGt_int ;
 int ECPGt_interval ;
 int ECPGt_long ;
 int ECPGt_long_long ;
 int ECPGt_numeric ;
 int ECPGt_short ;
 int ECPGt_timestamp ;


 int INFORMIX_MODE (int) ;
int
sqlda_dynamic_type(Oid type, enum COMPAT_MODE compat)
{
 switch (type)
 {
  case 140:
  case 128:
  case 141:
  case 131:
   return ECPGt_char;
  case 136:
   return ECPGt_short;
  case 135:
   return ECPGt_int;
  case 137:
   return ECPGt_double;
  case 138:
   return ECPGt_float;
  case 132:
   return INFORMIX_MODE(compat) ? ECPGt_decimal : ECPGt_numeric;
  case 139:
   return ECPGt_date;
  case 130:
  case 129:
   return ECPGt_timestamp;
  case 133:
   return ECPGt_interval;
  case 134:







  default:
   return ECPGt_char;
 }
}
