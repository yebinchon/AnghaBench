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
struct TYPE_3__ {int /*<<< orphan*/ * prefix; } ;
typedef  TYPE_1__ PREFIX_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,int,long,void*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 
#define  PREFIX_CTRL_SET_PREFIX 128 

__attribute__((used)) static long FUNC5(BIO *b, int cmd, long num, void *ptr)
{
    long ret = 0;

    switch (cmd) {
    case PREFIX_CTRL_SET_PREFIX:
        {
            PREFIX_CTX *ctx = FUNC1(b);

            if (ctx == NULL)
                break;

            FUNC3(ctx->prefix);
            ctx->prefix = FUNC4((const char *)ptr);
            ret = ctx->prefix != NULL;
        }
        break;
    default:
        if (FUNC2(b) != NULL)
            ret = FUNC0(FUNC2(b), cmd, num, ptr);
        break;
    }
    return ret;
}