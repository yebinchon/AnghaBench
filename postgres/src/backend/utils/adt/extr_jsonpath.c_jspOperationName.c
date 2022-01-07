
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonPathItemType ;


 int ERROR ;
 int elog (int ,char*,int) ;
const char *
jspOperationName(JsonPathItemType type)
{
 switch (type)
 {
  case 150:
   return "&&";
  case 133:
   return "||";
  case 145:
   return "==";
  case 134:
   return "!=";
  case 140:
   return "<";
  case 143:
   return ">";
  case 139:
   return "<=";
  case 142:
   return ">=";
  case 132:
  case 151:
   return "+";
  case 137:
  case 129:
   return "-";
  case 135:
   return "*";
  case 147:
   return "/";
  case 136:
   return "%";
  case 130:
   return "starts with";
  case 138:
   return "like_regex";
  case 128:
   return "type";
  case 131:
   return "size";
  case 141:
   return "keyvalue";
  case 146:
   return "double";
  case 152:
   return "abs";
  case 144:
   return "floor";
  case 149:
   return "ceiling";
  case 148:
   return "datetime";
  default:
   elog(ERROR, "unrecognized jsonpath item type: %d", type);
   return ((void*)0);
 }
}
