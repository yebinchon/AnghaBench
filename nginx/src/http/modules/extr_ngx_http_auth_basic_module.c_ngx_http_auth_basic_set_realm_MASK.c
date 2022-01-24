#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
struct TYPE_10__ {int len; char* data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_9__ {TYPE_5__* www_authenticate; int /*<<< orphan*/  headers; } ;
struct TYPE_11__ {TYPE_2__ headers_out; int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_http_request_t ;
struct TYPE_8__ {char* data; size_t len; } ;
struct TYPE_12__ {int hash; TYPE_1__ value; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  NGX_HTTP_UNAUTHORIZED ; 
 char* FUNC0 (char*,char*,int) ; 
 TYPE_5__* FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r, ngx_str_t *realm)
{
    size_t   len;
    u_char  *basic, *p;

    r->headers_out.www_authenticate = FUNC1(&r->headers_out.headers);
    if (r->headers_out.www_authenticate == NULL) {
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    len = sizeof("Basic realm=\"\"") - 1 + realm->len;

    basic = FUNC2(r->pool, len);
    if (basic == NULL) {
        r->headers_out.www_authenticate->hash = 0;
        r->headers_out.www_authenticate = NULL;
        return NGX_HTTP_INTERNAL_SERVER_ERROR;
    }

    p = FUNC0(basic, "Basic realm=\"", sizeof("Basic realm=\"") - 1);
    p = FUNC0(p, realm->data, realm->len);
    *p = '"';

    r->headers_out.www_authenticate->hash = 1;
    FUNC3(&r->headers_out.www_authenticate->key, "WWW-Authenticate");
    r->headers_out.www_authenticate->value.data = basic;
    r->headers_out.www_authenticate->value.len = len;

    return NGX_HTTP_UNAUTHORIZED;
}