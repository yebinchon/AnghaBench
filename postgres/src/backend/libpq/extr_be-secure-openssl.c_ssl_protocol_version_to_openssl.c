
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetConfigOption (char const*,int,int) ;





 int TLS1_1_VERSION ;
 int TLS1_2_VERSION ;
 int TLS1_3_VERSION ;
 int TLS1_VERSION ;
 int ereport (int,int ) ;
 int errmsg (char*,char const*,int ) ;

__attribute__((used)) static int
ssl_protocol_version_to_openssl(int v, const char *guc_name, int loglevel)
{
 switch (v)
 {
  case 128:
   return 0;
  case 129:
   return TLS1_VERSION;
  case 132:



   break;

  case 131:



   break;

  case 130:



   break;

 }

 ereport(loglevel,
   (errmsg("%s setting %s not supported by this build",
     guc_name,
     GetConfigOption(guc_name, 0, 0))));
 return -1;
}
