
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_14__ {int len; int * data; } ;
typedef TYPE_1__ ngx_str_t ;
struct TYPE_15__ {int * name; int regex; } ;
typedef TYPE_2__ ngx_regex_elt_t ;
struct TYPE_16__ {int regex; TYPE_1__ err; int options; int pool; TYPE_1__ pattern; } ;
typedef TYPE_3__ ngx_regex_compile_t ;
typedef scalar_t__ ngx_int_t ;
struct TYPE_17__ {int * regex; } ;
typedef TYPE_4__ ngx_http_referer_conf_t ;
struct TYPE_18__ {int pool; } ;
typedef TYPE_5__ ngx_conf_t ;


 int * NGX_CONF_UNSET_PTR ;
 scalar_t__ NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_MAX_CONF_ERRSTR ;
 scalar_t__ NGX_OK ;
 int NGX_REGEX_CASELESS ;
 int * ngx_array_create (int ,int,int) ;
 TYPE_2__* ngx_array_push (int *) ;
 int ngx_conf_log_error (int ,TYPE_5__*,int ,char*,TYPE_1__*) ;
 int ngx_memzero (TYPE_3__*,int) ;
 scalar_t__ ngx_regex_compile (TYPE_3__*) ;

__attribute__((used)) static ngx_int_t
ngx_http_add_regex_referer(ngx_conf_t *cf, ngx_http_referer_conf_t *rlcf,
    ngx_str_t *name)
{
    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "the using of the regex \"%V\" requires PCRE library",
                       name);

    return NGX_ERROR;


}
