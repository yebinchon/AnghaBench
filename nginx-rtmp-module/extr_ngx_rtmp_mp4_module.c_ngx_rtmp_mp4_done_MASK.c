#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* connection; } ;
typedef  TYPE_2__ ngx_rtmp_session_t ;
struct TYPE_9__ {scalar_t__ mmaped_size; int /*<<< orphan*/ * mmaped; int /*<<< orphan*/  extra; } ;
typedef  TYPE_3__ ngx_rtmp_mp4_ctx_t ;
typedef  scalar_t__ ngx_int_t ;
typedef  int /*<<< orphan*/  ngx_file_t ;
struct TYPE_7__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 int /*<<< orphan*/  NGX_LOG_ERR ; 
 scalar_t__ NGX_OK ; 
 int /*<<< orphan*/  ngx_errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ngx_rtmp_mp4_module ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_rtmp_session_t *s, ngx_file_t *f)
{
    ngx_rtmp_mp4_ctx_t            *ctx;

    ctx = FUNC1(s, ngx_rtmp_mp4_module);

    if (ctx == NULL || ctx->mmaped == NULL) {
        return NGX_OK;
    }

    if (FUNC2(ctx->mmaped, ctx->mmaped_size, &ctx->extra)
        != NGX_OK)
    {
        FUNC0(NGX_LOG_ERR, s->connection->log, ngx_errno,
                      "mp4: munmap failed");
        return NGX_ERROR;
    }

    ctx->mmaped = NULL;
    ctx->mmaped_size = 0;

    return NGX_OK;
}