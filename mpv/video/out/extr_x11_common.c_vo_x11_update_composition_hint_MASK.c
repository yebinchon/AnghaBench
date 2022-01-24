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
struct vo_x11_state {int /*<<< orphan*/  window; int /*<<< orphan*/  display; int /*<<< orphan*/  fs; } ;
struct vo {TYPE_1__* opts; struct vo_x11_state* x11; } ;
struct TYPE_2__ {int x11_bypass_compositor; } ;

/* Variables and functions */
 int /*<<< orphan*/  PropModeReplace ; 
 int /*<<< orphan*/  FUNC0 (struct vo_x11_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_CARDINAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  _NET_WM_BYPASS_COMPOSITOR ; 

__attribute__((used)) static void FUNC2(struct vo *vo)
{
    struct vo_x11_state *x11 = vo->x11;

    long hint = 0;
    switch (vo->opts->x11_bypass_compositor) {
    case 0: hint = 0; break; // leave default
    case 1: hint = 1; break; // always bypass
    case 2: hint = x11->fs ? 1 : 0; break; // bypass in FS
    case 3: hint = 2; break; // always enable
    }

    FUNC1(x11->display, x11->window, FUNC0(x11,_NET_WM_BYPASS_COMPOSITOR),
                    XA_CARDINAL, 32, PropModeReplace, (unsigned char *)&hint, 1);
}