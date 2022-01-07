
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_char ;
typedef void* ngx_str_t ;
struct TYPE_12__ {void* err; int captures; int regex; int pool; void* pattern; } ;
typedef TYPE_2__ ngx_regex_compile_t ;
struct TYPE_13__ {int split_regex; void* split_name; } ;
typedef TYPE_3__ ngx_http_fastcgi_loc_conf_t ;
struct TYPE_14__ {int pool; TYPE_1__* args; } ;
typedef TYPE_4__ ngx_conf_t ;
struct TYPE_15__ {void* name; } ;
typedef TYPE_5__ ngx_command_t ;
struct TYPE_11__ {void** elts; } ;


 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int NGX_MAX_CONF_ERRSTR ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,TYPE_4__*,int ,char*,void**) ;
 int ngx_memzero (TYPE_2__*,int) ;
 scalar_t__ ngx_regex_compile (TYPE_2__*) ;

__attribute__((used)) static char *
ngx_http_fastcgi_split_path_info(ngx_conf_t *cf, ngx_command_t *cmd, void *conf)
{
    ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                       "\"%V\" requires PCRE library", &cmd->name);
    return NGX_CONF_ERROR;


}
