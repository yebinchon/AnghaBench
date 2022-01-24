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
 size_t ARB_DEBUG_OUTPUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  d3d ; 
 int /*<<< orphan*/  d3d_perf ; 

__attribute__((used)) static BOOL FUNC3(const struct wined3d_gl_info *gl_info)
{
    return gl_info->supported[ARB_DEBUG_OUTPUT]
            && (FUNC0(d3d) || FUNC1(d3d) || FUNC2(d3d_perf));
}