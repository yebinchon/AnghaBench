#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  char u_char ;
typedef  int ngx_uint_t ;
struct TYPE_10__ {size_t len; char* data; } ;
typedef  TYPE_2__ ngx_str_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_11__ {TYPE_1__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int NGX_HTTP_LOG_UNSAFE ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (char) ; 
 char* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char**,char**,size_t,int /*<<< orphan*/ ) ; 
 unsigned int* usual ; 

ngx_int_t
FUNC5(ngx_http_request_t *r, ngx_str_t *uri,
    ngx_str_t *args, ngx_uint_t *flags)
{
    u_char      ch, *p, *src, *dst;
    size_t      len;
    ngx_uint_t  quoted;

    len = uri->len;
    p = uri->data;
    quoted = 0;

    if (len == 0 || p[0] == '?') {
        goto unsafe;
    }

    if (p[0] == '.' && len > 1 && p[1] == '.'
        && (len == 2 || FUNC2(p[2])))
    {
        goto unsafe;
    }

    for ( /* void */ ; len; len--) {

        ch = *p++;

        if (ch == '%') {
            quoted = 1;
            continue;
        }

        if (usual[ch >> 5] & (1U << (ch & 0x1f))) {
            continue;
        }

        if (ch == '?') {
            args->len = len - 1;
            args->data = p;
            uri->len -= len;

            break;
        }

        if (ch == '\0') {
            goto unsafe;
        }

        if (FUNC2(ch) && len > 2) {

            /* detect "/../" and "/.." */

            if (p[0] == '.' && p[1] == '.'
                && (len == 3 || FUNC2(p[2])))
            {
                goto unsafe;
            }
        }
    }

    if (quoted) {
        FUNC0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "escaped URI: \"%V\"", uri);

        src = uri->data;

        dst = FUNC3(r->pool, uri->len);
        if (dst == NULL) {
            return NGX_ERROR;
        }

        uri->data = dst;

        FUNC4(&dst, &src, uri->len, 0);

        uri->len = dst - uri->data;

        FUNC0(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "unescaped URI: \"%V\"", uri);

        len = uri->len;
        p = uri->data;

        if (p[0] == '.' && len > 1 && p[1] == '.'
            && (len == 2 || FUNC2(p[2])))
        {
            goto unsafe;
        }

        for ( /* void */ ; len; len--) {

            ch = *p++;

            if (ch == '\0') {
                goto unsafe;
            }

            if (FUNC2(ch) && len > 2) {

                /* detect "/../" and "/.." */

                if (p[0] == '.' && p[1] == '.'
                    && (len == 3 || FUNC2(p[2])))
                {
                    goto unsafe;
                }
            }
        }
    }

    return NGX_OK;

unsafe:

    if (*flags & NGX_HTTP_LOG_UNSAFE) {
        FUNC1(NGX_LOG_ERR, r->connection->log, 0,
                      "unsafe URI \"%V\" was detected", uri);
    }

    return NGX_ERROR;
}