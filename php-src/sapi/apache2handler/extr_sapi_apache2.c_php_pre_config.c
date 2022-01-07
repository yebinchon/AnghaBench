
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int APLOG_CRIT ;
 int APLOG_MARK ;
 int AP_MPMQ_IS_THREADED ;
 int DONE ;
 int OK ;
 int ap_log_error (int ,int ,int ,int ,char*) ;
 int ap_mpm_query (int ,int*) ;
 int * apache2_php_ini_path_override ;

__attribute__((used)) static int php_pre_config(apr_pool_t *pconf, apr_pool_t *plog, apr_pool_t *ptemp)
{

 int threaded_mpm;

 ap_mpm_query(AP_MPMQ_IS_THREADED, &threaded_mpm);
 if(threaded_mpm) {
  ap_log_error(APLOG_MARK, APLOG_CRIT, 0, 0, "Apache is running a threaded MPM, but your PHP Module is not compiled to be threadsafe.  You need to recompile PHP.");
  return DONE;
 }



 apache2_php_ini_path_override = ((void*)0);
 return OK;
}
