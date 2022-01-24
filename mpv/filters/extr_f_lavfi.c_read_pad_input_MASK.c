#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct lavfi_pad {scalar_t__ dir; scalar_t__ type; int /*<<< orphan*/  name; TYPE_5__ in_fmt; TYPE_1__ pending; int /*<<< orphan*/  pin; } ;
struct lavfi {int draining_recover; scalar_t__ initialized; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ MP_FRAME_EOF ; 
 scalar_t__ MP_PIN_IN ; 
 int /*<<< orphan*/  FUNC1 (struct lavfi*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_5__) ; 
 scalar_t__ FUNC4 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct lavfi*) ; 

__attribute__((used)) static void FUNC9(struct lavfi *c, struct lavfi_pad *pad)
{
    FUNC2(pad->dir == MP_PIN_IN);

    if (pad->pending.type || c->draining_recover)
        return;

    pad->pending = FUNC7(pad->pin);

    if (pad->pending.type && pad->pending.type != MP_FRAME_EOF &&
        pad->pending.type != pad->type)
    {
        FUNC0(c, "unknown frame %s\n", FUNC5(pad->pending.type));
        FUNC6(&pad->pending);
    }

    if (FUNC4(pad->pending) && pad->in_fmt.type &&
        !FUNC3(pad->pending, pad->in_fmt))
    {
        if (!c->draining_recover)
            FUNC1(c, "format change on %s\n", pad->name);
        c->draining_recover = true;
        if (c->initialized)
            FUNC8(c);
    }
}