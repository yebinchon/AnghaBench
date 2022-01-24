#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_flv_ctx_t ;
typedef  int /*<<< orphan*/  ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_file_t ;
struct TYPE_6__ {int /*<<< orphan*/  pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGX_ERROR ; 
 int /*<<< orphan*/  NGX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ngx_rtmp_flv_module ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ngx_int_t
FUNC4(ngx_rtmp_session_t *s, ngx_file_t *f, ngx_int_t aindex,
                  ngx_int_t vindex)
{
    ngx_rtmp_flv_ctx_t             *ctx;

    ctx = FUNC2(s, ngx_rtmp_flv_module);

    if (ctx == NULL) {
        ctx = FUNC1(s->connection->pool, sizeof(ngx_rtmp_flv_ctx_t));

        if (ctx == NULL) {
            return NGX_ERROR;
        }

        FUNC3(s, ctx, ngx_rtmp_flv_module);
    }

    FUNC0(ctx, sizeof(*ctx));

    return NGX_OK;
}