#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_6__ {int valid; int /*<<< orphan*/ * data; int /*<<< orphan*/ * len; scalar_t__ not_found; scalar_t__ no_cacheable; } ;
typedef  TYPE_1__ ngx_http_variable_value_t ;
struct TYPE_7__ {TYPE_5__* connection; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ ngx_http_request_t ;
struct TYPE_8__ {int /*<<< orphan*/  local_sockaddr; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_uint_t  port;

    v->len = 0;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    if (FUNC0(r->connection, NULL, 0) != NGX_OK) {
        return NGX_ERROR;
    }

    v->data = FUNC2(r->pool, sizeof("65535") - 1);
    if (v->data == NULL) {
        return NGX_ERROR;
    }

    port = FUNC1(r->connection->local_sockaddr);

    if (port > 0 && port < 65536) {
        v->len = FUNC3(v->data, "%ui", port) - v->data;
    }

    return NGX_OK;
}