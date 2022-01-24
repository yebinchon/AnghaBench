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
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int dummy; } ;
struct glsl_ds_program {int /*<<< orphan*/  pos_fixup_location; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC2(const struct wined3d_gl_info *gl_info,
        struct shader_glsl_priv *priv, GLuint program_id, struct glsl_ds_program *ds)
{
    ds->pos_fixup_location = FUNC0(FUNC1(program_id, "pos_fixup"));
}