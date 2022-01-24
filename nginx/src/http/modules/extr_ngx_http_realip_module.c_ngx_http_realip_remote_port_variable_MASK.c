#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_10__ {int valid; int /*<<< orphan*/ * data; int /*<<< orphan*/ * len; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef  TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_11__ {int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
struct TYPE_12__ {struct sockaddr* sockaddr; } ;
typedef  TYPE_4__ ngx_http_realip_ctx_t ;
struct TYPE_9__ {struct sockaddr* sockaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 TYPE_4__* FUNC0 (TYPE_3__*) ; 
 int FUNC1 (struct sockaddr*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_uint_t              port;
    struct sockaddr        *sa;
    ngx_http_realip_ctx_t  *ctx;

    ctx = FUNC0(r);

    sa = ctx ? ctx->sockaddr : r->connection->sockaddr;

    v->len = 0;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->data = FUNC2(r->pool, sizeof("65535") - 1);
    if (v->data == NULL) {
        return NGX_ERROR;
    }

    port = FUNC1(sa);

    if (port > 0 && port < 65536) {
        v->len = FUNC3(v->data, "%ui", port) - v->data;
    }

    return NGX_OK;
}