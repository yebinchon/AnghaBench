#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  size_t ngx_uint_t ;
struct TYPE_12__ {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ ngx_str_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_http_variable_value_t ;
struct TYPE_13__ {scalar_t__ percent; int /*<<< orphan*/  value; } ;
typedef  TYPE_4__ ngx_http_split_clients_part_t ;
struct TYPE_10__ {size_t nelts; TYPE_4__* elts; } ;
struct TYPE_14__ {TYPE_1__ parts; int /*<<< orphan*/  value; } ;
typedef  TYPE_5__ ngx_http_split_clients_ctx_t ;
struct TYPE_15__ {TYPE_2__* connection; } ;
typedef  TYPE_6__ ngx_http_request_t ;
struct TYPE_11__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_HTTP ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  ngx_http_variable_null_value ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_http_request_t *r,
    ngx_http_variable_value_t *v, uintptr_t data)
{
    ngx_http_split_clients_ctx_t *ctx = (ngx_http_split_clients_ctx_t *) data;

    uint32_t                        hash;
    ngx_str_t                       val;
    ngx_uint_t                      i;
    ngx_http_split_clients_part_t  *part;

    *v = ngx_http_variable_null_value;

    if (FUNC0(r, &ctx->value, &val) != NGX_OK) {
        return NGX_OK;
    }

    hash = FUNC2(val.data, val.len);

    part = ctx->parts.elts;

    for (i = 0; i < ctx->parts.nelts; i++) {

        FUNC1(NGX_LOG_DEBUG_HTTP, r->connection->log, 0,
                       "http split: %uD %uD", hash, part[i].percent);

        if (hash < part[i].percent || part[i].percent == 0) {
            *v = part[i].value;
            return NGX_OK;
        }
    }

    return NGX_OK;
}