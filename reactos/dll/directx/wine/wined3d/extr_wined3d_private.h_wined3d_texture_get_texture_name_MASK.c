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
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
struct wined3d_texture {TYPE_2__ texture_rgb; TYPE_1__ texture_srgb; } ;
struct wined3d_context {int dummy; } ;
typedef  int /*<<< orphan*/  GLuint ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct wined3d_context const*,struct wined3d_texture const*) ; 

__attribute__((used)) static inline GLuint FUNC1(const struct wined3d_texture *texture,
        const struct wined3d_context *context, BOOL srgb)
{
    return srgb && FUNC0(context, texture)
            ? texture->texture_srgb.name : texture->texture_rgb.name;
}