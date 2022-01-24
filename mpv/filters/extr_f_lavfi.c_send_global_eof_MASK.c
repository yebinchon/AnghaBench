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
struct lavfi_pad {int buffer_is_eof; int /*<<< orphan*/  buffer; } ;
struct lavfi {int num_in_pads; struct lavfi_pad** in_pads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct lavfi *c)
{
    for (int n = 0; n < c->num_in_pads; n++) {
        struct lavfi_pad *pad = c->in_pads[n];
        if (!pad->buffer || pad->buffer_is_eof)
            continue;

        if (FUNC1(pad->buffer, NULL) < 0)
            FUNC0(c, "could not send EOF to filter\n");

        pad->buffer_is_eof = true;
    }
}