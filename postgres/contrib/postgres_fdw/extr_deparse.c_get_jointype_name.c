
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JoinType ;


 int ERROR ;




 int elog (int ,char*,int) ;

const char *
get_jointype_name(JoinType jointype)
{
 switch (jointype)
 {
  case 130:
   return "INNER";

  case 129:
   return "LEFT";

  case 128:
   return "RIGHT";

  case 131:
   return "FULL";

  default:

   elog(ERROR, "unsupported join type %d", jointype);
 }


 return ((void*)0);
}
