
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MultiXactStatus ;


 int ERROR ;






 int elog (int ,char*,int) ;

__attribute__((used)) static char *
mxstatus_to_string(MultiXactStatus status)
{
 switch (status)
 {
  case 133:
   return "keysh";
  case 131:
   return "sh";
  case 132:
   return "fornokeyupd";
  case 130:
   return "forupd";
  case 129:
   return "nokeyupd";
  case 128:
   return "upd";
  default:
   elog(ERROR, "unrecognized multixact status %d", status);
   return "";
 }
}
