
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void ngx_google_perftools_conf_t ;
struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ ngx_cycle_t ;


 void* ngx_pcalloc (int ,int) ;

__attribute__((used)) static void *
ngx_google_perftools_create_conf(ngx_cycle_t *cycle)
{
    ngx_google_perftools_conf_t *gptcf;

    gptcf = ngx_pcalloc(cycle->pool, sizeof(ngx_google_perftools_conf_t));
    if (gptcf == ((void*)0)) {
        return ((void*)0);
    }







    return gptcf;
}
