
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;



 unsigned int SQL3_DDT_DATE ;
 unsigned int SQL3_DDT_ILLEGAL ;
 unsigned int SQL3_DDT_TIME ;
 unsigned int SQL3_DDT_TIMESTAMP ;
 unsigned int SQL3_DDT_TIMESTAMP_WITH_TIME_ZONE ;
 unsigned int SQL3_DDT_TIME_WITH_TIME_ZONE ;





__attribute__((used)) static unsigned int
ecpg_dynamic_type_DDT(Oid type)
{
 switch (type)
 {
  case 132:
   return SQL3_DDT_DATE;
  case 131:
   return SQL3_DDT_TIME;
  case 130:
   return SQL3_DDT_TIMESTAMP;
  case 129:
   return SQL3_DDT_TIMESTAMP_WITH_TIME_ZONE;
  case 128:
   return SQL3_DDT_TIME_WITH_TIME_ZONE;
  default:
   return SQL3_DDT_ILLEGAL;
 }
}
