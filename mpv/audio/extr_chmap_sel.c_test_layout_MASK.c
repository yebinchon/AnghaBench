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
struct mp_chmap_sel {scalar_t__ allow_any; } ;
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_chmap*) ; 
 scalar_t__ FUNC1 (struct mp_chmap_sel const*,struct mp_chmap*) ; 
 scalar_t__ FUNC2 (struct mp_chmap_sel const*,struct mp_chmap*) ; 
 scalar_t__ FUNC3 (struct mp_chmap_sel const*,struct mp_chmap*) ; 

__attribute__((used)) static bool FUNC4(const struct mp_chmap_sel *s, struct mp_chmap *map)
{
    if (!FUNC0(map))
        return false;

    return s->allow_any || FUNC3(s, map) || FUNC2(s, map) ||
           FUNC1(s, map);
}