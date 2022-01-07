
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
typedef void* ngx_str_t ;
struct TYPE_7__ {int len; int * data; } ;
struct TYPE_8__ {void* options; TYPE_1__ err; void* pattern; } ;
typedef TYPE_2__ ngx_regex_compile_t ;
typedef int ngx_int_t ;
struct TYPE_9__ {void* name; int * regex; } ;
typedef TYPE_3__ ngx_http_core_loc_conf_t ;
typedef int ngx_conf_t ;


 int NGX_ERROR ;
 int NGX_LOG_EMERG ;
 int NGX_MAX_CONF_ERRSTR ;
 int NGX_OK ;
 void* NGX_REGEX_CASELESS ;
 int ngx_conf_log_error (int ,int *,int ,char*,void**) ;
 int * ngx_http_regex_compile (int *,TYPE_2__*) ;
 int ngx_memzero (TYPE_2__*,int) ;

__attribute__((used)) static ngx_int_t
ngx_http_core_regex_location(ngx_conf_t *cf, ngx_http_core_loc_conf_t *clcf,
    ngx_str_t *regex, ngx_uint_t caseless)
{
    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "using regex \"%V\" requires PCRE library",
                       regex);
    return NGX_ERROR;


}
