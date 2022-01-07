
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 int GSS_C_ACCEPT ;
 int GSS_C_NULL_OID_SET ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 int _svcauth_gss_creds ;
 int _svcauth_gss_name ;
 scalar_t__ gss_acquire_cred (scalar_t__*,int ,int ,int ,int ,int *,int *,int *) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool_t
svcauth_gss_acquire_cred(void)
{
 OM_uint32 maj_stat, min_stat;

 log_debug("in svcauth_gss_acquire_cred()");

 maj_stat = gss_acquire_cred(&min_stat, _svcauth_gss_name, 0,
        GSS_C_NULL_OID_SET, GSS_C_ACCEPT,
        &_svcauth_gss_creds, ((void*)0), ((void*)0));

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_acquire_cred", maj_stat, min_stat);
  return (FALSE);
 }
 return (TRUE);
}
