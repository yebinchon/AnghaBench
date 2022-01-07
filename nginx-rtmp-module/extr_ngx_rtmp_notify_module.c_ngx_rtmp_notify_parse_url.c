
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int u_char ;
struct TYPE_11__ {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_12__ {int default_port; int uri_part; TYPE_10__ url; scalar_t__ err; } ;
typedef TYPE_1__ ngx_url_t ;
struct TYPE_13__ {scalar_t__ data; scalar_t__ len; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_14__ {int pool; } ;
typedef TYPE_3__ ngx_conf_t ;


 int NGX_LOG_EMERG ;
 scalar_t__ NGX_OK ;
 int ngx_conf_log_error (int ,TYPE_3__*,int ,char*,scalar_t__,TYPE_10__*) ;
 scalar_t__ ngx_parse_url (int ,TYPE_1__*) ;
 TYPE_1__* ngx_pcalloc (int ,int) ;
 scalar_t__ ngx_strncasecmp (scalar_t__,int *,int) ;

__attribute__((used)) static ngx_url_t *
ngx_rtmp_notify_parse_url(ngx_conf_t *cf, ngx_str_t *url)
{
    ngx_url_t *u;
    size_t add;

    add = 0;

    u = ngx_pcalloc(cf->pool, sizeof(ngx_url_t));
    if (u == ((void*)0)) {
        return ((void*)0);
    }

    if (ngx_strncasecmp(url->data, (u_char *) "http://", 7) == 0) {
        add = 7;
    }

    u->url.len = url->len - add;
    u->url.data = url->data + add;
    u->default_port = 80;
    u->uri_part = 1;

    if (ngx_parse_url(cf->pool, u) != NGX_OK) {
        if (u->err) {
            ngx_conf_log_error(NGX_LOG_EMERG, cf, 0,
                    "%s in url \"%V\"", u->err, &u->url);
        }
        return ((void*)0);
    }

    return u;
}
