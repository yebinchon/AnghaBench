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
struct vo_wayland_output {struct vo_wayland_output* model; struct vo_wayland_output* make; int /*<<< orphan*/  link; int /*<<< orphan*/  id; int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct vo_wayland_output*,struct vo_wayland_output*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vo_wayland_output*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct vo_wayland_output *out)
{
    if (!out)
        return;

    FUNC0(out->wl, "Deregistering output %s %s (0x%x)\n", out->make,
               out->model, out->id);
    FUNC2(&out->link);
    FUNC1(out->make);
    FUNC1(out->model);
    FUNC1(out);
    return;
}