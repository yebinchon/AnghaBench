#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t buf_size; size_t buf_len; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_1__ stringify_ctx_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static BOOL FUNC3(stringify_ctx_t *ctx, const WCHAR *str, size_t len)
{
    if(!ctx->buf_size) {
        ctx->buf = FUNC0(len*2*sizeof(WCHAR));
        if(!ctx->buf)
            return FALSE;
        ctx->buf_size = len*2;
    }else if(ctx->buf_len + len > ctx->buf_size) {
        WCHAR *new_buf;
        size_t new_size;

        new_size = ctx->buf_size * 2 + len;
        new_buf = FUNC1(ctx->buf, new_size*sizeof(WCHAR));
        if(!new_buf)
            return FALSE;
        ctx->buf = new_buf;
        ctx->buf_size = new_size;
    }

    if(len)
        FUNC2(ctx->buf + ctx->buf_len, str, len*sizeof(WCHAR));
    ctx->buf_len += len;
    return TRUE;
}