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
struct ass_draw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ass_draw*,float,float) ; 
 int /*<<< orphan*/  FUNC1 (struct ass_draw*,float,float) ; 

__attribute__((used)) static void FUNC2(struct ass_draw *d, float x0, float y0,
                             float x1, float y1)
{
    FUNC1(d, x0, y0);
    FUNC0(d, x1, y0);
    FUNC0(d, x1, y1);
    FUNC0(d, x0, y1);
}