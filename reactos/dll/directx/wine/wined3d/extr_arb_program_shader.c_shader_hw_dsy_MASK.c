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
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {TYPE_2__* dst; int /*<<< orphan*/ * src; TYPE_1__* ctx; } ;
struct TYPE_4__ {int /*<<< orphan*/  reg; } ;
struct TYPE_3__ {struct wined3d_string_buffer* buffer; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC5(const struct wined3d_shader_instruction *ins)
{
    struct wined3d_string_buffer *buffer = ins->ctx->buffer;
    char src[50];
    char dst[50];
    char dst_name[50];
    BOOL is_color;

    FUNC1(ins, &ins->dst[0], dst);
    FUNC4(ins, &ins->src[0], 0, src);
    FUNC3(ins, &ins->dst[0].reg, dst_name, &is_color);

    FUNC0(buffer, "DDY %s, %s;\n", dst, src);
    FUNC0(buffer, "MUL%s %s, %s, ycorrection.y;\n", FUNC2(ins), dst, dst_name);
}