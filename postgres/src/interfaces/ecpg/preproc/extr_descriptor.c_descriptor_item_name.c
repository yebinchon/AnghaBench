
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGdtype { ____Placeholder_ECPGdtype } ECPGdtype ;
__attribute__((used)) static const char *
descriptor_item_name(enum ECPGdtype itemcode)
{
 switch (itemcode)
 {
  case 143:
   return "CARDINALITY";
  case 142:
   return "COUNT";
  case 141:
   return "DATA";
  case 140:
   return "DATETIME_INTERVAL_CODE";
  case 139:
   return "DATETIME_INTERVAL_PRECISION";
  case 138:
   return "INDICATOR";
  case 137:
   return "KEY_MEMBER";
  case 136:
   return "LENGTH";
  case 135:
   return "NAME";
  case 134:
   return "NULLABLE";
  case 133:
   return "OCTET_LENGTH";
  case 132:
   return "PRECISION";
  case 131:
   return "RETURNED_LENGTH";
  case 130:
   return "RETURNED_OCTET_LENGTH";
  case 129:
   return "SCALE";
  case 128:
   return "TYPE";
  default:
   return ((void*)0);
 }
}
