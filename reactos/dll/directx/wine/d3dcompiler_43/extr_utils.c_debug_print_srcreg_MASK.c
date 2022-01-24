#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  swizzle; } ;
struct shader_reg {int srcmod; TYPE_1__ u; } ;

/* Variables and functions */
#define  BWRITERSPSM_ABS 141 
#define  BWRITERSPSM_ABSNEG 140 
#define  BWRITERSPSM_BIAS 139 
#define  BWRITERSPSM_BIASNEG 138 
#define  BWRITERSPSM_COMP 137 
#define  BWRITERSPSM_DW 136 
#define  BWRITERSPSM_DZ 135 
#define  BWRITERSPSM_NEG 134 
#define  BWRITERSPSM_NONE 133 
#define  BWRITERSPSM_NOT 132 
#define  BWRITERSPSM_SIGN 131 
#define  BWRITERSPSM_SIGNNEG 130 
#define  BWRITERSPSM_X2 129 
#define  BWRITERSPSM_X2NEG 128 
 int /*<<< orphan*/  FUNC0 (struct shader_reg const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct shader_reg const*) ; 
 char const* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

const char *FUNC4(const struct shader_reg *reg)
{
    switch (reg->srcmod)
    {
        case BWRITERSPSM_NONE:
            return FUNC3("%s%s%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_NEG:
            return FUNC3("-%s%s%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_BIAS:
            return FUNC3("%s%s_bias%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_BIASNEG:
            return FUNC3("-%s%s_bias%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_SIGN:
            return FUNC3("%s%s_bx2%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_SIGNNEG:
            return FUNC3("-%s%s_bx2%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_COMP:
            return FUNC3("1 - %s%s%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_X2:
            return FUNC3("%s%s_x2%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_X2NEG:
            return FUNC3("-%s%s_x2%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_DZ:
            return FUNC3("%s%s_dz%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_DW:
            return FUNC3("%s%s_dw%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_ABS:
            return FUNC3("%s%s_abs%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_ABSNEG:
            return FUNC3("-%s%s_abs%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
        case BWRITERSPSM_NOT:
            return FUNC3("!%s%s%s", FUNC2(reg),
                    FUNC0(reg),
                    FUNC1(reg->u.swizzle));
    }
    return "Unknown modifier";
}