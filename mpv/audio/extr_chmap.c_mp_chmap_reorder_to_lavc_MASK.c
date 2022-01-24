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
typedef  int /*<<< orphan*/  uint64_t ;
struct mp_chmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mp_chmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_chmap*) ; 

void FUNC3(struct mp_chmap *map)
{
    if (!FUNC1(map))
        return;
    uint64_t mask = FUNC2(map);
    FUNC0(map, mask);
}