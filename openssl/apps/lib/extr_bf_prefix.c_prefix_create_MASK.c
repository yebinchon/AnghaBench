#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int linestart; int /*<<< orphan*/ * prefix; } ;
typedef  TYPE_1__ PREFIX_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(BIO *b)
{
    PREFIX_CTX *ctx = FUNC2(sizeof(*ctx));

    if (ctx == NULL)
        return 0;

    ctx->prefix = NULL;
    ctx->linestart = 1;
    FUNC0(b, ctx);
    FUNC1(b, 1);
    return 1;
}