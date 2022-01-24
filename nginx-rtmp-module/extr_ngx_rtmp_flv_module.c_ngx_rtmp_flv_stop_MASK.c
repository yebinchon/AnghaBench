#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_flv_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_file_t ;
struct TYPE_5__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_LOG_DEBUG_RTMP ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ngx_rtmp_flv_module ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC2(ngx_rtmp_session_t *s, ngx_file_t *f)
{
    ngx_rtmp_flv_ctx_t             *ctx;

    ctx = FUNC1(s, ngx_rtmp_flv_module);

    if (ctx == NULL) {
        return NGX_OK;
    }

    FUNC0(NGX_LOG_DEBUG_RTMP, s->connection->log, 0,
                  "flv: stop");

    return NGX_OK;
}