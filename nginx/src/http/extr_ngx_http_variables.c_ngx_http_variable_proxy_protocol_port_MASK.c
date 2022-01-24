#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ngx_uint_t ;
typedef  int /*<<< orphan*/  ngx_proxy_protocol_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
struct TYPE_7__ {int not_found; int valid; int /*<<< orphan*/ * data; int /*<<< orphan*/ * len; scalar_t__ no_cacheable; } ;
typedef  TYPE_2__ ngx_http_variable_value_t ;
struct TYPE_8__ {int /*<<< orphan*/  pool; TYPE_1__* connection; } ;
typedef  TYPE_3__ ngx_http_request_t ;
typedef  int in_port_t ;
struct TYPE_6__ {int /*<<< orphan*/ * proxy_protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_uint_t             port;
    ngx_proxy_protocol_t  *pp;

    pp = r->connection->proxy_protocol;
    if (pp == NULL) {
        v->not_found = 1;
        return NGX_OK;
    }

    v->len = 0;
    v->valid = 1;
    v->no_cacheable = 0;
    v->not_found = 0;

    v->data = FUNC0(r->pool, sizeof("65535") - 1);
    if (v->data == NULL) {
        return NGX_ERROR;
    }

    port = *(in_port_t *) ((char *) pp + data);

    if (port > 0 && port < 65536) {
        v->len = FUNC1(v->data, "%ui", port) - v->data;
    }

    return NGX_OK;
}