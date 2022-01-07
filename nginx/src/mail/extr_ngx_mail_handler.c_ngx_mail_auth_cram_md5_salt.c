
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
typedef scalar_t__ ngx_uint_t ;
struct TYPE_10__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ ngx_str_t ;
struct TYPE_9__ {int * data; scalar_t__ len; } ;
struct TYPE_13__ {int len; } ;
struct TYPE_11__ {TYPE_1__ out; TYPE_8__ salt; } ;
typedef TYPE_3__ ngx_mail_session_t ;
typedef int ngx_int_t ;
struct TYPE_12__ {int pool; } ;
typedef TYPE_4__ ngx_connection_t ;


 int CR ;
 int LF ;
 int NGX_ERROR ;
 int NGX_OK ;
 scalar_t__ ngx_base64_encoded_length (int) ;
 int ngx_cpymem (int *,char*,size_t) ;
 int ngx_encode_base64 (TYPE_2__*,TYPE_8__*) ;
 int * ngx_pnalloc (int ,scalar_t__) ;

ngx_int_t
ngx_mail_auth_cram_md5_salt(ngx_mail_session_t *s, ngx_connection_t *c,
    char *prefix, size_t len)
{
    u_char *p;
    ngx_str_t salt;
    ngx_uint_t n;

    p = ngx_pnalloc(c->pool, len + ngx_base64_encoded_length(s->salt.len) + 2);
    if (p == ((void*)0)) {
        return NGX_ERROR;
    }

    salt.data = ngx_cpymem(p, prefix, len);
    s->salt.len -= 2;

    ngx_encode_base64(&salt, &s->salt);

    s->salt.len += 2;
    n = len + salt.len;
    p[n++] = CR; p[n++] = LF;

    s->out.len = n;
    s->out.data = p;

    return NGX_OK;
}
