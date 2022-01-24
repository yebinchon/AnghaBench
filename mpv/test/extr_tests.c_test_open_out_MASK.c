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
struct test_ctx {int /*<<< orphan*/  out_path; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_ctx*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 char* FUNC3 (int,char*,int /*<<< orphan*/ ,char const*) ; 

FILE *FUNC4(struct test_ctx *ctx, const char *name)
{
    char *path = FUNC3(4096, "%s/%s", ctx->out_path, name);
    FILE *f = FUNC2(path, "wb");
    if (!f) {
        FUNC0(ctx, "Could not open '%s' for writing.\n", path);
        FUNC1();
    }
    return f;
}