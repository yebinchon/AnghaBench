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
struct TYPE_3__ {int /*<<< orphan*/  gcm; scalar_t__ enc; } ;
typedef  TYPE_1__ PROV_GCM_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char const*,unsigned char*,size_t) ; 

__attribute__((used)) static int FUNC2(PROV_GCM_CTX *ctx, const unsigned char *in,
                              size_t len, unsigned char *out)
{
    if (ctx->enc) {
        if (FUNC1(&ctx->gcm, in, out, len))
            return 0;
    } else {
        if (FUNC0(&ctx->gcm, in, out, len))
            return 0;
    }
    return 1;
}