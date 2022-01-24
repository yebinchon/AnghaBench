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
struct vo {TYPE_1__* driver; scalar_t__ eq_opts_cache; scalar_t__ gl_opts_cache; scalar_t__ opts_cache; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* control ) (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VOCTRL_SET_EQUALIZER ; 
 int /*<<< orphan*/  VOCTRL_SET_PANSCAN ; 
 int /*<<< orphan*/  VOCTRL_UPDATE_RENDER_OPTS ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void *p)
{
    struct vo *vo = p;

    if (FUNC0(vo->opts_cache)) {
        FUNC1(vo);

        // "Legacy" update of video position related options.
        if (vo->driver->control)
            vo->driver->control(vo, VOCTRL_SET_PANSCAN, NULL);
    }

    if (vo->gl_opts_cache && FUNC0(vo->gl_opts_cache)) {
        // "Legacy" update of video GL renderer related options.
        if (vo->driver->control)
            vo->driver->control(vo, VOCTRL_UPDATE_RENDER_OPTS, NULL);
    }

    if (FUNC0(vo->eq_opts_cache)) {
        // "Legacy" update of video equalizer related options.
        if (vo->driver->control)
            vo->driver->control(vo, VOCTRL_SET_EQUALIZER, NULL);
    }
}