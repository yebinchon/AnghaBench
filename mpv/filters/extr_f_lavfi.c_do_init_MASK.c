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
struct mp_lavfi {int dummy; } ;
struct lavfi_pad {int pin_index; scalar_t__ type; int /*<<< orphan*/  name; int /*<<< orphan*/  dir; int /*<<< orphan*/  pin; } ;
struct lavfi {int num_in_pads; int num_out_pads; scalar_t__ force_type; TYPE_1__* f; struct mp_lavfi public; scalar_t__ force_bidir; struct lavfi_pad** out_pads; struct lavfi_pad** in_pads; scalar_t__ failed; } ;
struct TYPE_3__ {int num_pins; int /*<<< orphan*/ * ppins; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*) ; 
 scalar_t__ MP_PIN_IN ; 
 scalar_t__ MP_PIN_OUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lavfi*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static struct mp_lavfi *FUNC5(struct lavfi *c)
{
    FUNC3(c, true);

    if (c->failed)
        goto error;

    for (int n = 0; n < c->num_in_pads + c->num_out_pads; n++) {
        // First add input pins to satisfy order for bidir graph types.
        struct lavfi_pad *pad =
            n < c->num_in_pads ? c->in_pads[n] : c->out_pads[n - c->num_in_pads];

        pad->pin_index = c->f->num_pins;
        pad->pin = FUNC1(c->f, pad->dir, pad->name);

        if (c->force_type && c->force_type != pad->type) {
            FUNC0(c, "mismatching media type\n");
            goto error;
        }
    }

    if (c->force_bidir) {
        if (c->f->num_pins != 2) {
            FUNC0(c, "exactly 2 pads required\n");
            goto error;
        }
        if (FUNC2(c->f->ppins[0]) != MP_PIN_OUT ||
            FUNC2(c->f->ppins[1]) != MP_PIN_IN)
        {
            FUNC0(c, "1 input and 1 output pad required\n");
            goto error;
        }
    }

    return &c->public;

error:
    FUNC4(c->f);
    return NULL;
}