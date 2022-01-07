
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void ngx_http_upstream_random_srv_conf_t ;
struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ ngx_conf_t ;


 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static void *
ngx_http_upstream_random_create_conf(ngx_conf_t *cf)
{
    ngx_http_upstream_random_srv_conf_t *conf;

    conf = ngx_pcalloc(cf->pool, sizeof(ngx_http_upstream_random_srv_conf_t));
    if (conf == ((void*)0)) {
        return ((void*)0);
    }







    return conf;
}
