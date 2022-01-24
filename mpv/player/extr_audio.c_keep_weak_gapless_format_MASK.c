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
struct mp_aframe {int dummy; } ;

/* Variables and functions */
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (struct mp_aframe*,struct mp_aframe*) ; 
 int FUNC3 (struct mp_aframe*) ; 
 struct mp_aframe* FUNC4 (struct mp_aframe*) ; 
 int /*<<< orphan*/  FUNC5 (struct mp_aframe*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mp_aframe*) ; 

__attribute__((used)) static bool FUNC7(struct mp_aframe *old, struct mp_aframe* new)
{
    bool res = false;
    struct mp_aframe *new_mod = FUNC4(new);
    if (!new_mod)
        FUNC0();

    // If the sample formats are compatible (== libswresample generally can
    // convert them), keep the AO. On other changes, recreate it.

    int old_fmt = FUNC3(old);
    int new_fmt = FUNC3(new);

    if (FUNC1(old_fmt, new_fmt) == INT_MIN)
        goto done; // completely incompatible formats

    if (!FUNC5(new_mod, old_fmt))
        goto done;

    res = FUNC2(old, new_mod);

done:
    FUNC6(new_mod);
    return res;
}