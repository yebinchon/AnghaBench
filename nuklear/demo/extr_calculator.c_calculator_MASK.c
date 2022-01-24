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
struct nk_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NK_EDIT_SIMPLE ; 
 int NK_WINDOW_BORDER ; 
 int NK_WINDOW_MOVABLE ; 
 int NK_WINDOW_NO_SCROLLBAR ; 
 double FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct nk_context*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct nk_context*,char*) ; 
 scalar_t__ FUNC3 (struct nk_context*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nk_context*,int /*<<< orphan*/ ,char*,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nk_context*) ; 
 int /*<<< orphan*/  nk_filter_float ; 
 int /*<<< orphan*/  FUNC6 (struct nk_context*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int) ; 
 int FUNC8 (char*,int,char*,double) ; 

__attribute__((used)) static void
FUNC9(struct nk_context *ctx)
{
    if (FUNC1(ctx, "Calculator", FUNC7(10, 10, 180, 250),
        NK_WINDOW_BORDER|NK_WINDOW_NO_SCROLLBAR|NK_WINDOW_MOVABLE))
    {
        static int set = 0, prev = 0, op = 0;
        static const char numbers[] = "789456123";
        static const char ops[] = "+-*/";
        static double a = 0, b = 0;
        static double *current = &a;

        size_t i = 0;
        int solve = 0;
        {int len; char buffer[256];
        FUNC6(ctx, 35, 1);
        len = FUNC8(buffer, 256, "%.2f", *current);
        FUNC4(ctx, NK_EDIT_SIMPLE, buffer, &len, 255, nk_filter_float);
        buffer[len] = 0;
        *current = FUNC0(buffer);}

        FUNC6(ctx, 35, 4);
        for (i = 0; i < 16; ++i) {
            if (i >= 12 && i < 15) {
                if (i > 12) continue;
                if (FUNC2(ctx, "C")) {
                    a = b = op = 0; current = &a; set = 0;
                } if (FUNC2(ctx, "0")) {
                    *current = *current*10.0f; set = 0;
                } if (FUNC2(ctx, "=")) {
                    solve = 1; prev = op; op = 0;
                }
            } else if (((i+1) % 4)) {
                if (FUNC3(ctx, &numbers[(i/4)*3+i%4], 1)) {
                    *current = *current * 10.0f + numbers[(i/4)*3+i%4] - '0';
                    set = 0;
                }
            } else if (FUNC3(ctx, &ops[i/4], 1)) {
                if (!set) {
                    if (current != &b) {
                        current = &b;
                    } else {
                        prev = op;
                        solve = 1;
                    }
                }
                op = ops[i/4];
                set = 1;
            }
        }
        if (solve) {
            if (prev == '+') a = a + b;
            if (prev == '-') a = a - b;
            if (prev == '*') a = a * b;
            if (prev == '/') a = a / b;
            current = &a;
            if (set) current = &b;
            b = 0; set = 0;
        }
    }
    FUNC5(ctx);
}