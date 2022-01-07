
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t length; int value; } ;
struct svc_rpc_gss_data {TYPE_1__ cname; } ;
typedef int SVCAUTH ;


 struct svc_rpc_gss_data* SVCAUTH_PRIVATE (int *) ;
 char* malloc (int) ;
 int memcpy (char*,int ,size_t) ;

char *
svcauth_gss_get_principal(SVCAUTH *auth)
{
 struct svc_rpc_gss_data *gd;
 char *pname;

 gd = SVCAUTH_PRIVATE(auth);

 if (gd->cname.length == 0)
  return (((void*)0));

 if ((pname = malloc(gd->cname.length + 1)) == ((void*)0))
  return (((void*)0));

 memcpy(pname, gd->cname.value, gd->cname.length);
 pname[gd->cname.length] = '\0';

 return (pname);
}
