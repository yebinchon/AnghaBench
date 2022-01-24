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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {char* data; scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ name; } ;
typedef  TYPE_2__ ngx_rtmp_amf_elt_t ;
typedef  int /*<<< orphan*/  ngx_rtmp_amf_ctx_t ;
typedef  scalar_t__ ngx_int_t ;

/* Variables and functions */
 scalar_t__ NGX_ERROR ; 
 scalar_t__ NGX_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

__attribute__((used)) static ngx_int_t
FUNC3(ngx_rtmp_amf_ctx_t *ctx,
        ngx_rtmp_amf_elt_t *elts, size_t nelts)
{
    uint16_t                len;
    size_t                  n;
    u_char                  buf[2];

    for(n = 0; n < nelts; ++n) {

        len = (uint16_t) elts[n].name.len;

        if (FUNC0(ctx,
                    FUNC1(buf,
                        &len, 2), 2) != NGX_OK)
        {
            return NGX_ERROR;
        }

        if (FUNC0(ctx, elts[n].name.data, len) != NGX_OK) {
            return NGX_ERROR;
        }

        if (FUNC2(ctx, &elts[n], 1) != NGX_OK) {
            return NGX_ERROR;
        }
    }

    if (FUNC0(ctx, "\0\0", 2) != NGX_OK) {
        return NGX_ERROR;
    }

    return NGX_OK;
}