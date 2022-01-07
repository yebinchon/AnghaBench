
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
 int SQL3_BOOLEAN ;
 int SQL3_CHARACTER ;
 int SQL3_CHARACTER_VARYING ;
 int SQL3_DATE_TIME_TIMESTAMP ;
 int SQL3_DOUBLE_PRECISION ;
 int SQL3_INTEGER ;
 int SQL3_NUMERIC ;
 int SQL3_REAL ;
 int SQL3_SMALLINT ;





int
ecpg_dynamic_type(Oid type)
{
 switch (type)
 {
  case 139:
   return SQL3_BOOLEAN;
  case 134:
   return SQL3_SMALLINT;
  case 133:
   return SQL3_INTEGER;
  case 131:
   return SQL3_CHARACTER;
  case 136:
   return SQL3_REAL;
  case 135:
   return SQL3_DOUBLE_PRECISION;
  case 138:
   return SQL3_CHARACTER;
  case 128:
   return SQL3_CHARACTER_VARYING;
  case 137:
   return SQL3_DATE_TIME_TIMESTAMP;
  case 130:
   return SQL3_DATE_TIME_TIMESTAMP;
  case 129:
   return SQL3_DATE_TIME_TIMESTAMP;
  case 132:
   return SQL3_NUMERIC;
  default:
   return 0;
 }
}
