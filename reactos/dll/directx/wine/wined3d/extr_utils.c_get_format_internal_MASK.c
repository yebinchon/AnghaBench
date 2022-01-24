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
struct wined3d_gl_info {struct wined3d_format* formats; } ;
struct wined3d_format {int dummy; } ;
typedef  enum wined3d_format_id { ____Placeholder_wined3d_format_id } wined3d_format_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static struct wined3d_format *FUNC3(struct wined3d_gl_info *gl_info,
        enum wined3d_format_id format_id)
{
    int fmt_idx;

    if ((fmt_idx = FUNC2(format_id)) == -1)
    {
        FUNC0("Format %s (%#x) not found.\n", FUNC1(format_id), format_id);
        return NULL;
    }

    return &gl_info->formats[fmt_idx];
}