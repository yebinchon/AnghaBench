#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
typedef  char u_char ;
typedef  int ngx_uint_t ;
struct TYPE_11__ {int len; char* data; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_12__ {int /*<<< orphan*/  log; scalar_t__ ipv6; } ;
typedef  TYPE_2__ ngx_resolver_t ;
struct TYPE_13__ {int class_lo; int /*<<< orphan*/  type_lo; scalar_t__ class_hi; scalar_t__ type_hi; } ;
typedef  TYPE_3__ ngx_resolver_qs_t ;
struct TYPE_14__ {char* query; char* query6; scalar_t__ qlen; } ;
typedef  TYPE_4__ ngx_resolver_node_t ;
struct TYPE_15__ {char ident_hi; char ident_lo; int flags_hi; int nqs_lo; scalar_t__ nar_lo; scalar_t__ nar_hi; scalar_t__ nns_lo; scalar_t__ nns_hi; scalar_t__ nan_lo; scalar_t__ nan_hi; scalar_t__ nqs_hi; scalar_t__ flags_lo; } ;
typedef  TYPE_5__ ngx_resolver_hdr_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_DECLINED ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_CORE ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  NGX_RESOLVE_A ; 
 int /*<<< orphan*/  NGX_RESOLVE_AAAA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__) ; 
 int FUNC2 () ; 
 char* FUNC3 (TYPE_2__*,size_t) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_resolver_t *r, ngx_resolver_node_t *rn,
    ngx_str_t *name)
{
    u_char              *p, *s;
    size_t               len, nlen;
    ngx_uint_t           ident;
    ngx_resolver_qs_t   *qs;
    ngx_resolver_hdr_t  *query;

    nlen = name->len ? (1 + name->len + 1) : 1;

    len = sizeof(ngx_resolver_hdr_t) + nlen + sizeof(ngx_resolver_qs_t);

#if (NGX_HAVE_INET6)
    p = ngx_resolver_alloc(r, r->ipv6 ? len * 2 : len);
#else
    p = FUNC3(r, len);
#endif
    if (p == NULL) {
        return NGX_ERROR;
    }

    rn->qlen = (u_short) len;
    rn->query = p;

#if (NGX_HAVE_INET6)
    if (r->ipv6) {
        rn->query6 = p + len;
    }
#endif

    query = (ngx_resolver_hdr_t *) p;

    ident = FUNC2();

    FUNC0(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolve: \"%V\" A %i", name, ident & 0xffff);

    query->ident_hi = (u_char) ((ident >> 8) & 0xff);
    query->ident_lo = (u_char) (ident & 0xff);

    /* recursion query */
    query->flags_hi = 1; query->flags_lo = 0;

    /* one question */
    query->nqs_hi = 0; query->nqs_lo = 1;
    query->nan_hi = 0; query->nan_lo = 0;
    query->nns_hi = 0; query->nns_lo = 0;
    query->nar_hi = 0; query->nar_lo = 0;

    p += sizeof(ngx_resolver_hdr_t) + nlen;

    qs = (ngx_resolver_qs_t *) p;

    /* query type */
    qs->type_hi = 0; qs->type_lo = NGX_RESOLVE_A;

    /* IN query class */
    qs->class_hi = 0; qs->class_lo = 1;

    /* convert "www.example.com" to "\3www\7example\3com\0" */

    len = 0;
    p--;
    *p-- = '\0';

    if (name->len == 0)  {
        return NGX_DECLINED;
    }

    for (s = name->data + name->len - 1; s >= name->data; s--) {
        if (*s != '.') {
            *p = *s;
            len++;

        } else {
            if (len == 0 || len > 255) {
                return NGX_DECLINED;
            }

            *p = (u_char) len;
            len = 0;
        }

        p--;
    }

    if (len == 0 || len > 255) {
        return NGX_DECLINED;
    }

    *p = (u_char) len;

#if (NGX_HAVE_INET6)
    if (!r->ipv6) {
        return NGX_OK;
    }

    p = rn->query6;

    ngx_memcpy(p, rn->query, rn->qlen);

    query = (ngx_resolver_hdr_t *) p;

    ident = ngx_random();

    ngx_log_debug2(NGX_LOG_DEBUG_CORE, r->log, 0,
                   "resolve: \"%V\" AAAA %i", name, ident & 0xffff);

    query->ident_hi = (u_char) ((ident >> 8) & 0xff);
    query->ident_lo = (u_char) (ident & 0xff);

    p += sizeof(ngx_resolver_hdr_t) + nlen;

    qs = (ngx_resolver_qs_t *) p;

    qs->type_lo = NGX_RESOLVE_AAAA;
#endif

    return NGX_OK;
}