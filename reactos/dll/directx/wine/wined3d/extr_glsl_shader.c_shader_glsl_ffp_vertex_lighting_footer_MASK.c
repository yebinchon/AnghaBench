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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_ffp_vs_settings {scalar_t__ localviewer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct wined3d_string_buffer *buffer,
        const struct wined3d_ffp_vs_settings *settings, unsigned int idx)
{
    FUNC0(buffer, "diffuse += clamp(dot(dir, normal), 0.0, 1.0)"
            " * ffp_light[%u].diffuse.xyz * att;\n", idx);
    if (settings->localviewer)
        FUNC0(buffer, "t = dot(normal, normalize(dir - normalize(ec_pos.xyz)));\n");
    else
        FUNC0(buffer, "t = dot(normal, normalize(dir + vec3(0.0, 0.0, -1.0)));\n");
    FUNC0(buffer, "if (dot(dir, normal) > 0.0 && t > 0.0) specular +="
            " pow(t, ffp_material.shininess) * ffp_light[%u].specular * att;\n", idx);
}