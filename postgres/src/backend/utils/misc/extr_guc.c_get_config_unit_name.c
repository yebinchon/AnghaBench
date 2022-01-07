
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xbuf ;
typedef int bbuf ;


 int BLCKSZ ;
 int ERROR ;




 int GUC_UNIT_MEMORY ;



 int GUC_UNIT_TIME ;

 int XLOG_BLCKSZ ;
 int elog (int ,char*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static const char *
get_config_unit_name(int flags)
{
 switch (flags & (GUC_UNIT_MEMORY | GUC_UNIT_TIME))
 {
  case 0:
   return ((void*)0);
  case 134:
   return "B";
  case 133:
   return "kB";
  case 132:
   return "MB";
  case 135:
   {
    static char bbuf[8];


    if (bbuf[0] == '\0')
     snprintf(bbuf, sizeof(bbuf), "%dkB", BLCKSZ / 1024);
    return bbuf;
   }
  case 128:
   {
    static char xbuf[8];


    if (xbuf[0] == '\0')
     snprintf(xbuf, sizeof(xbuf), "%dkB", XLOG_BLCKSZ / 1024);
    return xbuf;
   }
  case 130:
   return "ms";
  case 129:
   return "s";
  case 131:
   return "min";
  default:
   elog(ERROR, "unrecognized GUC units value: %d",
     flags & (GUC_UNIT_MEMORY | GUC_UNIT_TIME));
   return ((void*)0);
 }
}
