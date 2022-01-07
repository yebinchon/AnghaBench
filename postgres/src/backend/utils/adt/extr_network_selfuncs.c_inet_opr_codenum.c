
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERROR ;





 int elog (int ,char*,int) ;

__attribute__((used)) static int
inet_opr_codenum(Oid operator)
{
 switch (operator)
 {
  case 128:
   return -2;
  case 129:
   return -1;
  case 132:
   return 0;
  case 131:
   return 1;
  case 130:
   return 2;
  default:
   elog(ERROR, "unrecognized operator %u for inet selectivity",
     operator);
 }
 return 0;
}
