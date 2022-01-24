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
struct vo {struct priv* priv; } ;
struct priv {scalar_t__ display; scalar_t__ update; int /*<<< orphan*/  display_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,struct vo*) ; 
 int /*<<< orphan*/  vsync_callback ; 

__attribute__((used)) static int FUNC6(struct vo *vo)
{
    struct priv *p = vo->priv;

    p->display = FUNC3(p->display_nr);
    p->update = FUNC4(0);
    if (!p->display || !p->update) {
        FUNC0(vo, "Could not get DISPMANX objects.\n");
        if (p->display)
            FUNC2(p->display);
        p->display = 0;
        p->update = 0;
        return -1;
    }

    FUNC1(vo);

    FUNC5(p->display, vsync_callback, vo);

    return 0;
}