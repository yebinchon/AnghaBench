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
struct test_ctx {int dummy; } ;
struct mpv_node {int dummy; } ;
struct entry {char* src; int expect_fail; int /*<<< orphan*/  out_data; int /*<<< orphan*/  out_txt; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_DEPTH ; 
 int FUNC0 (struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct entry* entries ; 
 int FUNC3 (int /*<<< orphan*/ *,struct mpv_node*) ; 
 scalar_t__ FUNC4 (void*,struct mpv_node*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 scalar_t__ FUNC6 (char**,struct mpv_node*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (void*,char*) ; 

__attribute__((used)) static void FUNC10(struct test_ctx *ctx)
{
    for (int n = 0; n < FUNC0(entries); n++) {
        const struct entry *e = &entries[n];
        void *tmp = FUNC8(NULL);
        char *s = FUNC9(tmp, e->src);
        FUNC5(&s);
        struct mpv_node res;
        bool ok = FUNC4(tmp, &res, &s, MAX_DEPTH) >= 0;
        FUNC2(ok != e->expect_fail);
        if (!ok) {
            FUNC7(tmp);
            continue;
        }
        char *d = FUNC9(tmp, "");
        FUNC2(FUNC6(&d, &res) >= 0);
        FUNC1(e->out_txt, d);
        FUNC2(FUNC3(&e->out_data, &res));
        FUNC7(tmp);
    }
}