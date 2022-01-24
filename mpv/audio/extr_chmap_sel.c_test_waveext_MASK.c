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
struct mp_chmap_sel {scalar_t__ allow_waveext; } ;
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_chmap*) ; 

__attribute__((used)) static bool FUNC2(const struct mp_chmap_sel *s, struct mp_chmap *map)
{
    if (s->allow_waveext) {
        struct mp_chmap t = *map;
        FUNC1(&t);
        if (FUNC0(&t)) {
            *map = t;
            return true;
        }
    }
    return false;
}