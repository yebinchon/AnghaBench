#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vec2 {int dummy; } ;
struct TYPE_5__ {TYPE_4__* texverts; } ;
typedef  TYPE_1__ graphics_t ;
struct TYPE_6__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__,struct vec2 const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* thread_graphics ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

void FUNC3(const struct vec2 *v, int unit)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC1("gs_texcoord2v"))
		return;
	if (!FUNC2(graphics, graphics->texverts[unit].num,
			   "gs_texcoord"))
		return;

	FUNC0(graphics->texverts[unit], v);
}