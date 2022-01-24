#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
typedef  int ssize_t ;
typedef  int ngx_uint_t ;
struct TYPE_7__ {int* data; int len; } ;
typedef  TYPE_1__ ngx_str_t ;
struct TYPE_8__ {int /*<<< orphan*/  log; int /*<<< orphan*/  log_level; } ;
typedef  TYPE_2__ ngx_resolver_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_resolver_t *r, ngx_str_t *name, u_char *buf, u_char *src,
    u_char *last)
{
    char        *err;
    u_char      *p, *dst;
    ssize_t      len;
    ngx_uint_t   i, n;

    p = src;
    len = -1;

    /*
     * compression pointers allow to create endless loop, so we set limit;
     * 128 pointers should be enough to store 255-byte name
     */

    for (i = 0; i < 128; i++) {
        n = *p++;

        if (n == 0) {
            goto done;
        }

        if (n & 0xc0) {
            n = ((n & 0x3f) << 8) + *p;
            p = &buf[n];

        } else {
            len += 1 + n;
            p = &p[n];
        }

        if (p >= last) {
            err = "name is out of response";
            goto invalid;
        }
    }

    err = "compression pointers loop";

invalid:

    FUNC0(r->log_level, r->log, 0, err);

    return NGX_ERROR;

done:

    if (name == NULL) {
        return NGX_OK;
    }

    if (len == -1) {
        FUNC2(name);
        return NGX_OK;
    }

    dst = FUNC1(r, len);
    if (dst == NULL) {
        return NGX_ERROR;
    }

    name->data = dst;

    n = *src++;

    for ( ;; ) {
        if (n & 0xc0) {
            n = ((n & 0x3f) << 8) + *src;
            src = &buf[n];

            n = *src++;

        } else {
            FUNC3(dst, src, n);
            dst += n;
            src += n;

            n = *src++;

            if (n != 0) {
                *dst++ = '.';
            }
        }

        if (n == 0) {
            name->len = dst - name->data;
            return NGX_OK;
        }
    }
}