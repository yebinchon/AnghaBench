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
typedef  int /*<<< orphan*/  uint32_t ;
struct gs_texture_2d {int /*<<< orphan*/  height; } ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,char*) ; 

uint32_t FUNC1(const gs_texture_t *tex)
{
	const struct gs_texture_2d *tex2d = (const struct gs_texture_2d *)tex;
	if (!FUNC0(tex, "gs_texture_get_height"))
		return 0;

	return tex2d->height;
}