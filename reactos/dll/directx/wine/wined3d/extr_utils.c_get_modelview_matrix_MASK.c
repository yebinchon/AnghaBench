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
struct wined3d_state {int /*<<< orphan*/ * transforms; } ;
struct wined3d_matrix {int dummy; } ;
struct wined3d_context {scalar_t__ last_was_rhw; } ;

/* Variables and functions */
 size_t WINED3D_TS_VIEW ; 
 size_t FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_matrix*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_matrix*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(const struct wined3d_context *context, const struct wined3d_state *state,
        unsigned int index, struct wined3d_matrix *mat)
{
    if (context->last_was_rhw)
        FUNC1(mat);
    else
        FUNC2(mat, &state->transforms[WINED3D_TS_VIEW], &state->transforms[FUNC0(index)]);
}