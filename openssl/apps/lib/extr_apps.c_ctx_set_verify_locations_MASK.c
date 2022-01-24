#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(SSL_CTX *ctx,
                             const char *CAfile, int noCAfile,
                             const char *CApath, int noCApath,
                             const char *CAstore, int noCAstore)
{
    if (CAfile == NULL && CApath == NULL && CAstore == NULL) {
        if (!noCAfile && FUNC4(ctx) <= 0)
            return 0;
        if (!noCApath && FUNC3(ctx) <= 0)
            return 0;
        if (!noCAstore && FUNC5(ctx) <= 0)
            return 0;

        return 1;
    }

    if (CAfile != NULL && !FUNC1(ctx, CAfile))
        return 0;
    if (CApath != NULL && !FUNC0(ctx, CApath))
        return 0;
    if (CAstore != NULL && !FUNC2(ctx, CAstore))
        return 0;
    return 1;
}