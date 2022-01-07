
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ php_conf_rec ;
typedef int apr_pool_t ;


 scalar_t__ apr_pcalloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,TYPE_1__*,int ,int ) ;
 int config_entry_dtor ;
 int destroy_php_config ;
 int phpapdebug (int ) ;
 int stderr ;
 int zend_hash_init (int *,int ,int *,int ,int) ;

void *create_php_config(apr_pool_t *p, char *dummy)
{
 php_conf_rec *newx = (php_conf_rec *) apr_pcalloc(p, sizeof(*newx));

 phpapdebug((stderr, "Creating new config (%p) for %s\n", newx, dummy));
 zend_hash_init(&newx->config, 0, ((void*)0), config_entry_dtor, 1);
 apr_pool_cleanup_register(p, newx, destroy_php_config, apr_pool_cleanup_null);
 return (void *) newx;
}
