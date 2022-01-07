
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int bool_t ;
typedef scalar_t__ OM_uint32 ;


 int FALSE ;
 scalar_t__ GSS_S_COMPLETE ;
 int TRUE ;
 int * _svcauth_gss_name ;
 scalar_t__ gss_duplicate_name (scalar_t__*,int ,int **) ;
 scalar_t__ gss_release_name (scalar_t__*,int **) ;
 int log_debug (char*) ;
 int log_status (char*,scalar_t__,scalar_t__) ;

bool_t
svcauth_gss_set_svc_name(gss_name_t name)
{
 OM_uint32 maj_stat, min_stat;

 log_debug("in svcauth_gss_set_svc_name()");

 if (_svcauth_gss_name != ((void*)0)) {
  maj_stat = gss_release_name(&min_stat, &_svcauth_gss_name);

  if (maj_stat != GSS_S_COMPLETE) {
   log_status("gss_release_name", maj_stat, min_stat);
   return (FALSE);
  }
  _svcauth_gss_name = ((void*)0);
 }
 maj_stat = gss_duplicate_name(&min_stat, name, &_svcauth_gss_name);

 if (maj_stat != GSS_S_COMPLETE) {
  log_status("gss_duplicate_name", maj_stat, min_stat);
  return (FALSE);
 }

 return (TRUE);
}
