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
struct wined3d_state {int dummy; } ;
struct wined3d_context {int dummy; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (void*,struct wined3d_context*,struct wined3d_state const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_state const*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_state const*) ; 

__attribute__((used)) static void FUNC3(void *shader_priv, struct wined3d_context *context,
        const struct wined3d_state *state)
{
    BOOL vs = FUNC2(state);
    BOOL ps = FUNC1(state);

    FUNC0(shader_priv, context, state, ps, vs, FALSE);
}