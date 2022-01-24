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
typedef  enum wined3d_shader_rel_op { ____Placeholder_wined3d_shader_rel_op } wined3d_shader_rel_op ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  WINED3D_SHADER_REL_OP_EQ 133 
#define  WINED3D_SHADER_REL_OP_GE 132 
#define  WINED3D_SHADER_REL_OP_GT 131 
#define  WINED3D_SHADER_REL_OP_LE 130 
#define  WINED3D_SHADER_REL_OP_LT 129 
#define  WINED3D_SHADER_REL_OP_NE 128 

__attribute__((used)) static const char *FUNC1(enum wined3d_shader_rel_op op)
{
    switch (op)
    {
        case WINED3D_SHADER_REL_OP_GT: return ">";
        case WINED3D_SHADER_REL_OP_EQ: return "==";
        case WINED3D_SHADER_REL_OP_GE: return ">=";
        case WINED3D_SHADER_REL_OP_LT: return "<";
        case WINED3D_SHADER_REL_OP_NE: return "!=";
        case WINED3D_SHADER_REL_OP_LE: return "<=";
        default:
            FUNC0("Unrecognized operator %#x.\n", op);
            return "(\?\?)";
    }
}