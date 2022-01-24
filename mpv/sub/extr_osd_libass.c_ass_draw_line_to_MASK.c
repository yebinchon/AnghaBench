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
 int /*<<< orphan*/  FUNC0 (struct ass_draw*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ass_draw*,float,float) ; 

__attribute__((used)) static void FUNC2(struct ass_draw *d, float x, float y)
{
    FUNC0(d, " l");
    FUNC1(d, x, y);
}