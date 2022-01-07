
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_gss_sec {int dummy; } ;
typedef scalar_t__ gss_name_t ;
struct TYPE_4__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int gss_OID ;
struct TYPE_5__ {int cf_stat; } ;
typedef scalar_t__ OM_uint32 ;
typedef int CLIENT ;
typedef int AUTH ;


 scalar_t__ GSS_C_NO_NAME ;
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ;
 scalar_t__ GSS_S_COMPLETE ;
 int RPC_AUTHERROR ;
 int * authgss_create (int *,scalar_t__,struct rpc_gss_sec*) ;
 int fprintf (int ,char*,scalar_t__) ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_1__*,int ,scalar_t__*) ;
 int gss_release_name (scalar_t__*,scalar_t__*) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 TYPE_2__ rpc_createerr ;
 int stderr ;
 int strlen (char*) ;

AUTH *
authgss_create_default(CLIENT *clnt, char *service, struct rpc_gss_sec *sec)
{
 AUTH *auth;
 OM_uint32 maj_stat = 0, min_stat = 0;
 gss_buffer_desc sname;
 gss_name_t name = GSS_C_NO_NAME;

 log_debug("in authgss_create_default()");


 sname.value = service;
 sname.length = strlen(service);

 maj_stat = gss_import_name(&min_stat, &sname,
  (gss_OID)GSS_C_NT_HOSTBASED_SERVICE,
  &name);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_import_name", maj_stat, min_stat);
  rpc_createerr.cf_stat = RPC_AUTHERROR;
  return (((void*)0));
 }

 auth = authgss_create(clnt, name, sec);

 if (name != GSS_C_NO_NAME) {



   gss_release_name(&min_stat, &name);
 }

 return (auth);
}
