
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGdtype { ____Placeholder_ECPGdtype } ECPGdtype ;
 int ET_ERROR ;
 int PARSE_ERROR ;
 int mmerror (int ,int ,char*,int) ;

const char *
get_dtype(enum ECPGdtype type)
{
 switch (type)
 {
  case 142:
   return "ECPGd_countr";
   break;
  case 141:
   return "ECPGd_data";
   break;
  case 140:
   return "ECPGd_di_code";
   break;
  case 139:
   return "ECPGd_di_precision";
   break;
  case 138:
   return "ECPGd_indicator";
   break;
  case 137:
   return "ECPGd_key_member";
   break;
  case 136:
   return "ECPGd_length";
   break;
  case 135:
   return "ECPGd_name";
   break;
  case 134:
   return "ECPGd_nullable";
   break;
  case 133:
   return "ECPGd_octet";
   break;
  case 132:
   return "ECPGd_precision";
   break;
  case 131:
   return "ECPGd_ret_length";
  case 130:
   return "ECPGd_ret_octet";
   break;
  case 129:
   return "ECPGd_scale";
   break;
  case 128:
   return "ECPGd_type";
   break;
  case 143:
   return "ECPGd_cardinality";
  default:
   mmerror(PARSE_ERROR, ET_ERROR, "unrecognized descriptor item code %d", type);
 }

 return ((void*)0);
}
