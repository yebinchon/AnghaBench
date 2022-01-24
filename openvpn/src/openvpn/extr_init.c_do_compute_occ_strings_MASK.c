#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gc_arena {int dummy; } ;
struct TYPE_4__ {void* options_string_remote; void* options_string_local; scalar_t__ tls_multi; int /*<<< orphan*/  frame; } ;
struct TYPE_3__ {int /*<<< orphan*/  tuntap; } ;
struct context {TYPE_2__ c2; int /*<<< orphan*/  net_ctx; TYPE_1__ c1; int /*<<< orphan*/  options; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_SHOW_OCC ; 
 int /*<<< orphan*/  FUNC0 (struct gc_arena*) ; 
 struct gc_arena FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*,void*) ; 

__attribute__((used)) static void
FUNC6(struct context *c)
{
    struct gc_arena gc = FUNC1();

    c->c2.options_string_local =
        FUNC3(&c->options, &c->c2.frame, c->c1.tuntap, &c->net_ctx,
                       false, &gc);
    c->c2.options_string_remote =
        FUNC3(&c->options, &c->c2.frame, c->c1.tuntap, &c->net_ctx,
                       true, &gc);

    FUNC2(D_SHOW_OCC, "Local Options String (VER=%s): '%s'",
        FUNC4(c->c2.options_string_local, &gc),
        c->c2.options_string_local);
    FUNC2(D_SHOW_OCC, "Expected Remote Options String (VER=%s): '%s'",
        FUNC4(c->c2.options_string_remote, &gc),
        c->c2.options_string_remote);

    if (c->c2.tls_multi)
    {
        FUNC5(c->c2.tls_multi,
                                   c->c2.options_string_local,
                                   c->c2.options_string_remote);
    }

    FUNC0(&gc);
}