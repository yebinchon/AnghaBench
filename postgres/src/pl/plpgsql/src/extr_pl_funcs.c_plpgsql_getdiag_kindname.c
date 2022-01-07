
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_getdiag_kind ;
const char *
plpgsql_getdiag_kindname(PLpgSQL_getdiag_kind kind)
{
 switch (kind)
 {
  case 130:
   return "ROW_COUNT";
  case 137:
   return "PG_CONTEXT";
  case 135:
   return "PG_EXCEPTION_CONTEXT";
  case 134:
   return "PG_EXCEPTION_DETAIL";
  case 133:
   return "PG_EXCEPTION_HINT";
  case 131:
   return "RETURNED_SQLSTATE";
  case 139:
   return "COLUMN_NAME";
  case 138:
   return "CONSTRAINT_NAME";
  case 136:
   return "PG_DATATYPE_NAME";
  case 132:
   return "MESSAGE_TEXT";
  case 128:
   return "TABLE_NAME";
  case 129:
   return "SCHEMA_NAME";
 }

 return "unknown";
}
