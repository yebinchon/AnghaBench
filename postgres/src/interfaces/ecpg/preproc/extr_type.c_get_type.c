
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
 int ET_ERROR ;
 int PARSE_ERROR ;
 int mmerror (int ,int ,char*,int) ;

__attribute__((used)) static const char *
get_type(enum ECPGttype type)
{
 switch (type)
 {
  case 150:
   return "ECPGt_char";
   break;
  case 133:
   return "ECPGt_unsigned_char";
   break;
  case 137:
   return "ECPGt_short";
   break;
  case 129:
   return "ECPGt_unsigned_short";
   break;
  case 142:
   return "ECPGt_int";
   break;
  case 132:
   return "ECPGt_unsigned_int";
   break;
  case 140:
   return "ECPGt_long";
   break;
  case 131:
   return "ECPGt_unsigned_long";
   break;
  case 139:
   return "ECPGt_long_long";
   break;
  case 130:
   return "ECPGt_unsigned_long_long";
   break;
  case 143:
   return "ECPGt_float";
   break;
  case 144:
   return "ECPGt_double";
   break;
  case 152:
   return "ECPGt_bool";
   break;
  case 128:
   return "ECPGt_varchar";
  case 151:
   return "ECPGt_bytea";
  case 153:
   return "ECPGt_NO_INDICATOR";
   break;
  case 149:
   return "ECPGt_char_variable";
   break;
  case 148:
   return "ECPGt_const";
   break;
  case 146:
   return "ECPGt_decimal";
   break;
  case 138:
   return "ECPGt_numeric";
   break;
  case 141:
   return "ECPGt_interval";
   break;
  case 145:
   return "ECPGt_descriptor";
   break;
  case 136:
   return "ECPGt_sqlda";
   break;
  case 147:
   return "ECPGt_date";
   break;
  case 134:
   return "ECPGt_timestamp";
   break;
  case 135:
   return "ECPGt_string";
   break;
  default:
   mmerror(PARSE_ERROR, ET_ERROR, "unrecognized variable type code %d", type);
 }

 return ((void*)0);
}
