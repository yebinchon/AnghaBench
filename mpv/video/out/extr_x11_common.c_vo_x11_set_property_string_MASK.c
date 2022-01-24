#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vo_x11_state {int /*<<< orphan*/  window; int /*<<< orphan*/  display; } ;
struct vo {struct vo_x11_state* x11; } ;
struct TYPE_4__ {scalar_t__ value; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ XTextProperty ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 scalar_t__ Success ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XStdICCTextStyle ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC4(struct vo *vo, Atom name, const char *t)
{
    struct vo_x11_state *x11 = vo->x11;
    XTextProperty prop = {0};

    if (FUNC2(x11->display, (char **)&t, 1,
                                    XStdICCTextStyle, &prop) == Success)
    {
        FUNC1(x11->display, x11->window, &prop, name);
    } else {
        // Strictly speaking this violates the ICCCM, but there's no way we
        // can do this correctly.
        FUNC3(vo, name, t);
    }

    if (prop.value)
        FUNC0(prop.value);
}