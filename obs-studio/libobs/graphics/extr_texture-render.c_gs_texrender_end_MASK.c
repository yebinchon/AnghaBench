#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int rendered; int /*<<< orphan*/  prev_zs; int /*<<< orphan*/  prev_target; } ;
typedef  TYPE_1__ gs_texrender_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(gs_texrender_t *texrender)
{
	if (!texrender)
		return;

	FUNC2(texrender->prev_target, texrender->prev_zs);

	FUNC0();
	FUNC1();
	FUNC3();

	texrender->rendered = true;
}