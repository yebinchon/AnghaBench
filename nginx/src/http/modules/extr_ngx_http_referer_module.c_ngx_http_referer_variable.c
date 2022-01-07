
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef char u_char ;
typedef int ngx_uint_t ;
struct TYPE_22__ {int len; char* data; } ;
typedef TYPE_6__ ngx_str_t ;
typedef scalar_t__ ngx_int_t ;
typedef int ngx_http_variable_value_t ;
struct TYPE_20__ {TYPE_3__* referer; } ;
struct TYPE_23__ {TYPE_5__* connection; TYPE_4__ headers_in; } ;
typedef TYPE_7__ ngx_http_request_t ;
struct TYPE_17__ {int * buckets; } ;
struct TYPE_16__ {int * wc_tail; int * wc_head; TYPE_1__ hash; } ;
struct TYPE_24__ {int * regex; int * server_name_regex; TYPE_14__ hash; scalar_t__ blocked_referer; scalar_t__ no_referer; } ;
typedef TYPE_8__ ngx_http_referer_conf_t ;
struct TYPE_21__ {int log; } ;
struct TYPE_18__ {size_t len; char* data; } ;
struct TYPE_19__ {TYPE_2__ value; } ;


 scalar_t__ NGX_ERROR ;
 TYPE_6__* NGX_HTTP_REFERER_NO_URI_PART ;
 scalar_t__ NGX_OK ;
 int ngx_hash (int,char) ;
 TYPE_6__* ngx_hash_find_combined (TYPE_14__*,int,char*,int) ;
 TYPE_8__* ngx_http_get_module_loc_conf (TYPE_7__*,int ) ;
 int ngx_http_referer_module ;
 int ngx_http_variable_null_value ;
 int ngx_http_variable_true_value ;
 scalar_t__ ngx_regex_exec_array (int *,TYPE_6__*,int ) ;
 scalar_t__ ngx_strncasecmp (char*,char*,int) ;
 scalar_t__ ngx_strncmp (char*,char*,size_t) ;
 char ngx_tolower (char) ;

__attribute__((used)) static ngx_int_t
ngx_http_referer_variable(ngx_http_request_t *r, ngx_http_variable_value_t *v,
    uintptr_t data)
{
    u_char *p, *ref, *last;
    size_t len;
    ngx_str_t *uri;
    ngx_uint_t i, key;
    ngx_http_referer_conf_t *rlcf;
    u_char buf[256];





    rlcf = ngx_http_get_module_loc_conf(r, ngx_http_referer_module);

    if (rlcf->hash.hash.buckets == ((void*)0)
        && rlcf->hash.wc_head == ((void*)0)
        && rlcf->hash.wc_tail == ((void*)0)




       )
    {
        goto valid;
    }

    if (r->headers_in.referer == ((void*)0)) {
        if (rlcf->no_referer) {
            goto valid;
        }

        goto invalid;
    }

    len = r->headers_in.referer->value.len;
    ref = r->headers_in.referer->value.data;

    if (len >= sizeof("http://i.ru") - 1) {
        last = ref + len;

        if (ngx_strncasecmp(ref, (u_char *) "http://", 7) == 0) {
            ref += 7;
            len -= 7;
            goto valid_scheme;

        } else if (ngx_strncasecmp(ref, (u_char *) "https://", 8) == 0) {
            ref += 8;
            len -= 8;
            goto valid_scheme;
        }
    }

    if (rlcf->blocked_referer) {
        goto valid;
    }

    goto invalid;

valid_scheme:

    i = 0;
    key = 0;

    for (p = ref; p < last; p++) {
        if (*p == '/' || *p == ':') {
            break;
        }

        if (i == 256) {
            goto invalid;
        }

        buf[i] = ngx_tolower(*p);
        key = ngx_hash(key, buf[i++]);
    }

    uri = ngx_hash_find_combined(&rlcf->hash, key, buf, p - ref);

    if (uri) {
        goto uri;
    }
invalid:

    *v = ngx_http_variable_true_value;

    return NGX_OK;

uri:

    for ( ; p < last; p++) {
        if (*p == '/') {
            break;
        }
    }

    len = last - p;

    if (uri == NGX_HTTP_REFERER_NO_URI_PART) {
        goto valid;
    }

    if (len < uri->len || ngx_strncmp(uri->data, p, uri->len) != 0) {
        goto invalid;
    }

valid:

    *v = ngx_http_variable_null_value;

    return NGX_OK;
}
