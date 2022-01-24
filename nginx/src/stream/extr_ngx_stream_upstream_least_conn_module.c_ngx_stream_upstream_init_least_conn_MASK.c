#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  init; } ;
struct TYPE_9__ {TYPE_1__ peer; } ;
typedef  TYPE_2__ ngx_stream_upstream_srv_conf_t ;
typedef  scalar_t__ ngx_int_t ;
struct TYPE_10__ {int /*<<< orphan*/  log; } ;
typedef  TYPE_3__ ngx_conf_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_DEBUG_STREAM ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_stream_upstream_init_least_conn_peer ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_conf_t *cf,
    ngx_stream_upstream_srv_conf_t *us)
{
    FUNC0(NGX_LOG_DEBUG_STREAM, cf->log, 0,
                   "init least conn");

    if (FUNC1(cf, us) != NGX_OK) {
        return NGX_ERROR;
    }

    us->peer.init = ngx_stream_upstream_init_least_conn_peer;

    return NGX_OK;
}