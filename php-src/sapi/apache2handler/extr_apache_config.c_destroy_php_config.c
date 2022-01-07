
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
typedef TYPE_1__ php_conf_rec ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int phpapdebug (int ) ;
 int stderr ;
 int zend_hash_destroy (int *) ;

__attribute__((used)) static apr_status_t destroy_php_config(void *data)
{
 php_conf_rec *d = data;

 phpapdebug((stderr, "Destroying config %p\n", data));
 zend_hash_destroy(&d->config);

 return APR_SUCCESS;
}
