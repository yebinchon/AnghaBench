
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gss_name_t ;
struct TYPE_3__ {char* value; int length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int gss_OID ;
typedef scalar_t__ bool_t ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ FALSE ;
 scalar_t__ GSS_C_NT_HOSTBASED_SERVICE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ TRUE ;
 scalar_t__ gss_import_name (scalar_t__*,TYPE_1__*,int ,int *) ;
 int gss_release_name (scalar_t__*,int *) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;
 int strlen (char*) ;
 scalar_t__ svcauth_gss_set_svc_name (int ) ;

__attribute__((used)) static bool_t
svcauth_gss_import_name(char *service)
{
 gss_name_t name;
 gss_buffer_desc namebuf;
 OM_uint32 maj_stat, min_stat;

 log_debug("in svcauth_gss_import_name()");

 namebuf.value = service;
 namebuf.length = strlen(service);

 maj_stat = gss_import_name(&min_stat, &namebuf,
       (gss_OID)GSS_C_NT_HOSTBASED_SERVICE, &name);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_import_name", maj_stat, min_stat);
  return (FALSE);
 }
 if (svcauth_gss_set_svc_name(name) != TRUE) {
  gss_release_name(&min_stat, &name);
  return (FALSE);
 }
 return (TRUE);
}
