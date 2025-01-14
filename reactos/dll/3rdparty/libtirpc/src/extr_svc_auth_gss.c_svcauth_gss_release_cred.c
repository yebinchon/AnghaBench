
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 int * _svcauth_gss_creds ;
 scalar_t__ gss_release_cred (scalar_t__*,int **) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static bool_t
svcauth_gss_release_cred(void)
{
 OM_uint32 maj_stat, min_stat;

 log_debug("in svcauth_gss_release_cred()");

 maj_stat = gss_release_cred(&min_stat, &_svcauth_gss_creds);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_release_cred", maj_stat, min_stat);
  return (FALSE);
 }

 _svcauth_gss_creds = ((void*)0);

 return (TRUE);
}
