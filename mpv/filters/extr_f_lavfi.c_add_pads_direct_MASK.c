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
struct lavfi {int dummy; } ;
typedef  int /*<<< orphan*/  AVFilterPad ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lavfi*,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC2(struct lavfi *c, int dir, AVFilterContext *f,
                            AVFilterPad *pads, int num_pads, bool first_init)
{
    for (int n = 0; n < num_pads; n++)
        FUNC0(c, dir, n, f, n, FUNC1(pads, n), first_init);
}