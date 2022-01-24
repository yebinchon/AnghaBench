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
struct wined3d_shader_instruction {int dummy; } ;
struct wined3d_shader_dst_param {int /*<<< orphan*/  reg; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,struct wined3d_shader_dst_param const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins,
        const struct wined3d_shader_dst_param *wined3d_dst, char *str)
{
    char register_name[255];
    char write_mask[6];
    BOOL is_color;

    FUNC0(ins, &wined3d_dst->reg, register_name, &is_color);
    FUNC3(str, register_name);

    FUNC1(ins, wined3d_dst, write_mask);
    FUNC2(str, write_mask);
}