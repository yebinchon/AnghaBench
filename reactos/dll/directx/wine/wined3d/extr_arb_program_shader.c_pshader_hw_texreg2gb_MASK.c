#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct wined3d_string_buffer {int dummy; } ;
struct wined3d_shader_instruction {int /*<<< orphan*/ * src; TYPE_4__* dst; TYPE_2__* ctx; } ;
struct TYPE_5__ {TYPE_3__* idx; } ;
struct TYPE_8__ {TYPE_1__ reg; } ;
struct TYPE_7__ {int /*<<< orphan*/  offset; } ;
struct TYPE_6__ {struct wined3d_string_buffer* buffer; } ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wined3d_string_buffer*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wined3d_shader_instruction const*,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wined3d_shader_instruction const*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_shader_instruction *ins)
{
     struct wined3d_string_buffer *buffer = ins->ctx->buffer;

     DWORD reg1 = ins->dst[0].reg.idx[0].offset;
     char dst_str[50];
     char src_str[50];

     /* Note that texreg2gb treats Tx as a temporary register, not as a varying */
     FUNC1(ins, &ins->dst[0], dst_str);
     FUNC2(ins, &ins->src[0], 0, src_str);
     FUNC0(buffer, "MOV TA.x, %s.y;\n", src_str);
     FUNC0(buffer, "MOV TA.y, %s.z;\n", src_str);
     FUNC3(ins, reg1, dst_str, "TA", 0, NULL, NULL);
}