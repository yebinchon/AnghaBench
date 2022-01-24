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
struct wined3d_gl_info {scalar_t__* supported; } ;
typedef  int BOOL ;

/* Variables and functions */
 size_t ARB_EXPLICIT_ATTRIB_LOCATION ; 
 int /*<<< orphan*/  FUNC0 (struct wined3d_gl_info const*) ; 
 scalar_t__ FUNC1 (struct wined3d_gl_info const*) ; 

__attribute__((used)) static BOOL FUNC2(const struct wined3d_gl_info *gl_info)
{
    return gl_info->supported[ARB_EXPLICIT_ATTRIB_LOCATION]
            && FUNC1(gl_info) && !FUNC0(gl_info);
}