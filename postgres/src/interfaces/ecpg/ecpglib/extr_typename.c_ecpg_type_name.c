
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;
 int abort () ;

const char *
ecpg_type_name(enum ECPGttype typ)
{
 switch (typ)
 {
  case 148:
  case 135:
   return "char";
  case 133:
   return "unsigned char";
  case 136:
   return "short";
  case 129:
   return "unsigned short";
  case 141:
   return "int";
  case 132:
   return "unsigned int";
  case 139:
   return "long";
  case 131:
   return "unsigned long";
  case 138:
   return "long long";
  case 130:
   return "unsigned long long";
  case 142:
   return "float";
  case 143:
   return "double";
  case 150:
   return "bool";
  case 128:
   return "varchar";
  case 149:
   return "bytea";
  case 147:
   return "char";
  case 144:
   return "decimal";
  case 137:
   return "numeric";
  case 145:
   return "date";
  case 134:
   return "timestamp";
  case 140:
   return "interval";
  case 146:
   return "Const";
  default:
   abort();
 }
 return "";
}
