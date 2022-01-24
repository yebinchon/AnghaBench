#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct wined3d_gl_info {int dummy; } ;
struct shader_glsl_priv {int /*<<< orphan*/  program_lookup; } ;
struct TYPE_12__ {int /*<<< orphan*/  shader_entry; scalar_t__ id; } ;
struct TYPE_11__ {int /*<<< orphan*/  shader_entry; scalar_t__ id; } ;
struct TYPE_10__ {int /*<<< orphan*/  shader_entry; scalar_t__ id; } ;
struct TYPE_9__ {int /*<<< orphan*/  shader_entry; scalar_t__ id; } ;
struct TYPE_8__ {int /*<<< orphan*/  shader_entry; scalar_t__ id; } ;
struct TYPE_7__ {int /*<<< orphan*/  shader_entry; scalar_t__ id; } ;
struct glsl_shader_prog_link {TYPE_6__ cs; TYPE_5__ ps; TYPE_4__ gs; TYPE_3__ ds; TYPE_2__ hs; TYPE_1__ vs; int /*<<< orphan*/  id; int /*<<< orphan*/  program_lookup_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct glsl_shader_prog_link*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct shader_glsl_priv *priv, const struct wined3d_gl_info *gl_info,
        struct glsl_shader_prog_link *entry)
{
    FUNC4(&priv->program_lookup, &entry->program_lookup_entry);

    FUNC0(FUNC1(entry->id));
    if (entry->vs.id)
        FUNC3(&entry->vs.shader_entry);
    if (entry->hs.id)
        FUNC3(&entry->hs.shader_entry);
    if (entry->ds.id)
        FUNC3(&entry->ds.shader_entry);
    if (entry->gs.id)
        FUNC3(&entry->gs.shader_entry);
    if (entry->ps.id)
        FUNC3(&entry->ps.shader_entry);
    if (entry->cs.id)
        FUNC3(&entry->cs.shader_entry);
    FUNC2(entry);
}