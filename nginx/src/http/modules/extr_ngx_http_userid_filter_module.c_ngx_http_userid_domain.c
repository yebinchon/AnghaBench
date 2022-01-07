
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_6__ {int pool; } ;
typedef TYPE_2__ ngx_conf_t ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int * ngx_cpymem (int *,char*,int) ;
 int ngx_memcpy (int *,int *,int) ;
 int * ngx_pnalloc (int ,int) ;
 int ngx_str_set (TYPE_1__*,char*) ;
 scalar_t__ ngx_strcmp (int *,char*) ;

__attribute__((used)) static char *
ngx_http_userid_domain(ngx_conf_t *cf, void *post, void *data)
{
    ngx_str_t *domain = data;

    u_char *p, *new;

    if (ngx_strcmp(domain->data, "none") == 0) {
        ngx_str_set(domain, "");
        return NGX_CONF_OK;
    }

    new = ngx_pnalloc(cf->pool, sizeof("; domain=") - 1 + domain->len);
    if (new == ((void*)0)) {
        return NGX_CONF_ERROR;
    }

    p = ngx_cpymem(new, "; domain=", sizeof("; domain=") - 1);
    ngx_memcpy(p, domain->data, domain->len);

    domain->len += sizeof("; domain=") - 1;
    domain->data = new;

    return NGX_CONF_OK;
}
