#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  src_blt_color_key; } ;
struct TYPE_3__ {int /*<<< orphan*/  format; } ;
struct wined3d_texture {TYPE_2__ async; TYPE_1__ resource; } ;
struct wined3d_state {struct wined3d_texture** textures; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_color {int /*<<< orphan*/  r; } ;
struct glsl_ps_program {int /*<<< orphan*/  color_key_location; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct wined3d_color*) ; 

__attribute__((used)) static void FUNC3(const struct glsl_ps_program *ps,
        const struct wined3d_gl_info *gl_info, const struct wined3d_state *state)
{
    struct wined3d_color float_key[2];
    const struct wined3d_texture *texture = state->textures[0];

    FUNC2(texture->resource.format, &texture->async.src_blt_color_key, float_key);
    FUNC0(FUNC1(ps->color_key_location, 2, &float_key[0].r));
}