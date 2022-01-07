
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef size_t ngx_uint_t ;
struct TYPE_12__ {scalar_t__ len; int data; } ;
struct TYPE_11__ {scalar_t__ len; int data; } ;
struct TYPE_13__ {TYPE_4__ value; TYPE_3__ key; } ;
typedef TYPE_5__ ngx_table_elt_t ;
struct TYPE_9__ {size_t len; int * data; } ;
struct TYPE_14__ {TYPE_2__* headers; TYPE_1__ header; int pass_client_cert; int timeout; int line; int file; int * peer; int uri; int host_header; } ;
typedef TYPE_6__ ngx_mail_auth_http_conf_t ;
struct TYPE_15__ {int pool; int log; } ;
typedef TYPE_7__ ngx_conf_t ;
struct TYPE_10__ {size_t nelts; TYPE_5__* elts; } ;


 int CR ;
 int LF ;
 char* NGX_CONF_ERROR ;
 char* NGX_CONF_OK ;
 int NGX_LOG_EMERG ;
 int ngx_conf_merge_msec_value (int ,int ,int) ;
 int ngx_conf_merge_value (int ,int ,int ) ;
 int * ngx_cpymem (int *,int ,scalar_t__) ;
 int ngx_log_error (int ,int ,int ,char*,int ,int ) ;
 int * ngx_pnalloc (int ,size_t) ;

__attribute__((used)) static char *
ngx_mail_auth_http_merge_conf(ngx_conf_t *cf, void *parent, void *child)
{
    ngx_mail_auth_http_conf_t *prev = parent;
    ngx_mail_auth_http_conf_t *conf = child;

    u_char *p;
    size_t len;
    ngx_uint_t i;
    ngx_table_elt_t *header;

    if (conf->peer == ((void*)0)) {
        conf->peer = prev->peer;
        conf->host_header = prev->host_header;
        conf->uri = prev->uri;

        if (conf->peer == ((void*)0)) {
            ngx_log_error(NGX_LOG_EMERG, cf->log, 0,
                          "no \"auth_http\" is defined for server in %s:%ui",
                          conf->file, conf->line);

            return NGX_CONF_ERROR;
        }
    }

    ngx_conf_merge_msec_value(conf->timeout, prev->timeout, 60000);

    ngx_conf_merge_value(conf->pass_client_cert, prev->pass_client_cert, 0);

    if (conf->headers == ((void*)0)) {
        conf->headers = prev->headers;
        conf->header = prev->header;
    }

    if (conf->headers && conf->header.len == 0) {
        len = 0;
        header = conf->headers->elts;
        for (i = 0; i < conf->headers->nelts; i++) {
            len += header[i].key.len + 2 + header[i].value.len + 2;
        }

        p = ngx_pnalloc(cf->pool, len);
        if (p == ((void*)0)) {
            return NGX_CONF_ERROR;
        }

        conf->header.len = len;
        conf->header.data = p;

        for (i = 0; i < conf->headers->nelts; i++) {
            p = ngx_cpymem(p, header[i].key.data, header[i].key.len);
            *p++ = ':'; *p++ = ' ';
            p = ngx_cpymem(p, header[i].value.data, header[i].value.len);
            *p++ = CR; *p++ = LF;
        }
    }

    return NGX_CONF_OK;
}
