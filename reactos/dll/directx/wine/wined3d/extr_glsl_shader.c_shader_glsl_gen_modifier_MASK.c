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
typedef  enum wined3d_shader_src_modifier { ____Placeholder_wined3d_shader_src_modifier } wined3d_shader_src_modifier ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  WINED3DSPSM_ABS 141 
#define  WINED3DSPSM_ABSNEG 140 
#define  WINED3DSPSM_BIAS 139 
#define  WINED3DSPSM_BIASNEG 138 
#define  WINED3DSPSM_COMP 137 
#define  WINED3DSPSM_DW 136 
#define  WINED3DSPSM_DZ 135 
#define  WINED3DSPSM_NEG 134 
#define  WINED3DSPSM_NONE 133 
#define  WINED3DSPSM_NOT 132 
#define  WINED3DSPSM_SIGN 131 
#define  WINED3DSPSM_SIGNNEG 130 
#define  WINED3DSPSM_X2 129 
#define  WINED3DSPSM_X2NEG 128 
 int /*<<< orphan*/  FUNC1 (char*,char*,char const*,char const*,...) ; 

__attribute__((used)) static void FUNC2(enum wined3d_shader_src_modifier src_modifier,
        const char *in_reg, const char *in_regswizzle, char *out_str)
{
    switch (src_modifier)
    {
    case WINED3DSPSM_DZ: /* Need to handle this in the instructions itself (texld & texcrd). */
    case WINED3DSPSM_DW:
    case WINED3DSPSM_NONE:
        FUNC1(out_str, "%s%s", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_NEG:
        FUNC1(out_str, "-%s%s", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_NOT:
        FUNC1(out_str, "!%s%s", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_BIAS:
        FUNC1(out_str, "(%s%s - vec4(0.5)%s)", in_reg, in_regswizzle, in_regswizzle);
        break;
    case WINED3DSPSM_BIASNEG:
        FUNC1(out_str, "-(%s%s - vec4(0.5)%s)", in_reg, in_regswizzle, in_regswizzle);
        break;
    case WINED3DSPSM_SIGN:
        FUNC1(out_str, "(2.0 * (%s%s - 0.5))", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_SIGNNEG:
        FUNC1(out_str, "-(2.0 * (%s%s - 0.5))", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_COMP:
        FUNC1(out_str, "(1.0 - %s%s)", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_X2:
        FUNC1(out_str, "(2.0 * %s%s)", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_X2NEG:
        FUNC1(out_str, "-(2.0 * %s%s)", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_ABS:
        FUNC1(out_str, "abs(%s%s)", in_reg, in_regswizzle);
        break;
    case WINED3DSPSM_ABSNEG:
        FUNC1(out_str, "-abs(%s%s)", in_reg, in_regswizzle);
        break;
    default:
        FUNC0("Unhandled modifier %u\n", src_modifier);
        FUNC1(out_str, "%s%s", in_reg, in_regswizzle);
    }
}