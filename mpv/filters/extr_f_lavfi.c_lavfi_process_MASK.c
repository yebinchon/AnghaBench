#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct mp_filter {struct lavfi* priv; } ;
struct lavfi {int num_out_pads; int /*<<< orphan*/  f; scalar_t__ failed; TYPE_1__** out_pads; scalar_t__ draining_recover; scalar_t__ initialized; } ;
struct TYPE_2__ {int buffer_is_eof; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*) ; 
 int FUNC1 (struct lavfi*) ; 
 int /*<<< orphan*/  FUNC2 (struct lavfi*) ; 
 int /*<<< orphan*/  FUNC3 (struct lavfi*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct lavfi*) ; 

__attribute__((used)) static void FUNC7(struct mp_filter *f)
{
    struct lavfi *c = f->priv;

    if (!c->initialized)
        FUNC3(c);

    while (c->initialized) {
        bool a = FUNC6(c);
        bool b = FUNC1(c);
        if (!a && !b)
            break;
    }

    // Start over on format changes or EOF draining.
    if (c->draining_recover) {
        // Wait until all outputs got EOF.
        bool all_eof = true;
        for (int n = 0; n < c->num_out_pads; n++)
            all_eof &= c->out_pads[n]->buffer_is_eof;

        if (all_eof) {
            FUNC0(c, "recovering all eof\n");
            FUNC2(c);
            FUNC5(c->f);
        }
    }

    if (c->failed)
        FUNC4(c->f);
}