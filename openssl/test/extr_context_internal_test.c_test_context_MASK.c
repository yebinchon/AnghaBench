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
struct TYPE_4__ {int /*<<< orphan*/  i; } ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_1__ FOO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  foo_method ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(OPENSSL_CTX *ctx)
{
    FOO *data = NULL;

    return FUNC1(data = FUNC2(ctx, 0, &foo_method))
        /* OPENSSL_zalloc in foo_new() initialized it to zero */
        && FUNC0(data->i, 42);
}