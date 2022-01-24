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
struct vo_x11_state {scalar_t__ dnd_requested_format; } ;
typedef  scalar_t__ Atom ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo_x11_state*,char*,char*) ; 
 scalar_t__ FUNC1 (struct vo_x11_state*,scalar_t__,scalar_t__) ; 
 char* FUNC2 (struct vo_x11_state*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct vo_x11_state *x11, Atom *args, int items)
{
    x11->dnd_requested_format = 0;

    for (int n = 0; n < items; n++) {
        FUNC0(x11, "DnD type: '%s'\n", FUNC2(x11, args[n]));
        // There are other types; possibly not worth supporting.
        if (FUNC1(x11, x11->dnd_requested_format, args[n]))
            x11->dnd_requested_format = args[n];
    }

    FUNC0(x11, "Selected DnD type: %s\n", x11->dnd_requested_format ?
                    FUNC2(x11, x11->dnd_requested_format) : "(none)");
}