
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int apr_status_t ;
struct TYPE_3__ {int (* shutdown ) (TYPE_1__*) ;} ;


 int APR_SUCCESS ;
 TYPE_1__ apache2_sapi_module ;
 int sapi_shutdown () ;
 int stub1 (TYPE_1__*) ;
 int tsrm_shutdown () ;

__attribute__((used)) static apr_status_t php_apache_server_shutdown(void *tmp)
{
 apache2_sapi_module.shutdown(&apache2_sapi_module);
 sapi_shutdown();



 return APR_SUCCESS;
}
