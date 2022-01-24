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
struct wined3d_context {int /*<<< orphan*/  fbo_entry_count; } ;
struct fbo_entry {int /*<<< orphan*/  entry; scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_context*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct fbo_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct wined3d_context *context, struct fbo_entry *entry)
{
    if (entry->id)
    {
        FUNC0("Destroy FBO %u.\n", entry->id);
        FUNC1(context, entry->id);
    }
    --context->fbo_entry_count;
    FUNC3(&entry->entry);
    FUNC2(entry);
}