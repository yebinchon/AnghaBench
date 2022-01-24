#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
typedef  scalar_t__ ngx_uint_t ;
struct TYPE_10__ {scalar_t__ len; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ ngx_str_t ;
struct TYPE_9__ {int /*<<< orphan*/ * data; scalar_t__ len; } ;
struct TYPE_13__ {int len; } ;
struct TYPE_11__ {TYPE_1__ out; TYPE_8__ salt; } ;
typedef  TYPE_3__ ngx_mail_session_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_12__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_4__ ngx_connection_t ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int /*<<< orphan*/  LF ; 
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_8__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

ngx_int_t
FUNC4(ngx_mail_session_t *s, ngx_connection_t *c,
    char *prefix, size_t len)
{
    u_char      *p;
    ngx_str_t    salt;
    ngx_uint_t   n;

    p = FUNC3(c->pool, len + FUNC0(s->salt.len) + 2);
    if (p == NULL) {
        return NGX_ERROR;
    }

    salt.data = FUNC1(p, prefix, len);
    s->salt.len -= 2;

    FUNC2(&salt, &s->salt);

    s->salt.len += 2;
    n = len + salt.len;
    p[n++] = CR; p[n++] = LF;

    s->out.len = n;
    s->out.data = p;

    return NGX_OK;
}