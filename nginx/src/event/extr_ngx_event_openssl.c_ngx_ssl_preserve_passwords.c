
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_12__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_13__ {TYPE_4__* data; int handler; } ;
typedef TYPE_2__ ngx_pool_cleanup_t ;
struct TYPE_14__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;
struct TYPE_15__ {size_t nelts; TYPE_1__* elts; } ;
typedef TYPE_4__ ngx_array_t ;


 TYPE_4__* ngx_array_create (int ,size_t,int) ;
 TYPE_1__* ngx_array_push (TYPE_4__*) ;
 int ngx_memcpy (int *,int *,int ) ;
 int * ngx_pnalloc (int ,int ) ;
 TYPE_2__* ngx_pool_cleanup_add (int ,int ) ;
 int ngx_ssl_passwords_cleanup ;

ngx_array_t *
ngx_ssl_preserve_passwords(ngx_conf_t *cf, ngx_array_t *passwords)
{
    ngx_str_t *opwd, *pwd;
    ngx_uint_t i;
    ngx_array_t *pwds;
    ngx_pool_cleanup_t *cln;
    static ngx_array_t empty_passwords;

    if (passwords == ((void*)0)) {







        return &empty_passwords;
    }







    pwds = ngx_array_create(cf->pool, passwords->nelts, sizeof(ngx_str_t));
    if (pwds == ((void*)0)) {
        return ((void*)0);
    }

    cln = ngx_pool_cleanup_add(cf->pool, 0);
    if (cln == ((void*)0)) {
        return ((void*)0);
    }

    cln->handler = ngx_ssl_passwords_cleanup;
    cln->data = pwds;

    opwd = passwords->elts;

    for (i = 0; i < passwords->nelts; i++) {

        pwd = ngx_array_push(pwds);
        if (pwd == ((void*)0)) {
            return ((void*)0);
        }

        pwd->len = opwd[i].len;
        pwd->data = ngx_pnalloc(cf->pool, pwd->len);

        if (pwd->data == ((void*)0)) {
            pwds->nelts--;
            return ((void*)0);
        }

        ngx_memcpy(pwd->data, opwd[i].data, opwd[i].len);
    }

    return pwds;
}
