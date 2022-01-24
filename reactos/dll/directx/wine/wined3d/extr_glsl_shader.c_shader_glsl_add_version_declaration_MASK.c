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
struct wined3d_gl_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_gl_info const*) ; 

__attribute__((used)) static void FUNC2(struct wined3d_string_buffer *buffer,
        const struct wined3d_gl_info *gl_info)
{
    FUNC0(buffer, "#version %u\n", FUNC1(gl_info));
}