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
struct TYPE_3__ {int /*<<< orphan*/ * texverts; int /*<<< orphan*/  colors; int /*<<< orphan*/  norms; int /*<<< orphan*/  verts; } ;
typedef  TYPE_1__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(graphics_t *graphics)
{
	FUNC0(graphics->verts);
	FUNC0(graphics->norms);
	FUNC0(graphics->colors);
	for (size_t i = 0; i < 16; i++)
		FUNC0(graphics->texverts[i]);
}