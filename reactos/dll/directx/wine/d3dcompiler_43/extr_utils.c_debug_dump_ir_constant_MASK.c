#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hlsl_type {int dimy; int dimx; int base_type; } ;
struct TYPE_5__ {int /*<<< orphan*/ * b; int /*<<< orphan*/ * u; int /*<<< orphan*/ * i; int /*<<< orphan*/ * d; scalar_t__* f; } ;
struct TYPE_6__ {TYPE_2__ value; } ;
struct TYPE_4__ {struct hlsl_type* data_type; } ;
struct hlsl_ir_constant {TYPE_3__ v; TYPE_1__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  HLSL_TYPE_BOOL 132 
#define  HLSL_TYPE_DOUBLE 131 
#define  HLSL_TYPE_FLOAT 130 
#define  HLSL_TYPE_INT 129 
#define  HLSL_TYPE_UINT 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct hlsl_type*) ; 

__attribute__((used)) static void FUNC2(const struct hlsl_ir_constant *constant)
{
    struct hlsl_type *type = constant->node.data_type;
    unsigned int x, y;

    if (type->dimy != 1)
        FUNC0("{");
    for (y = 0; y < type->dimy; ++y)
    {
        if (type->dimx != 1)
            FUNC0("{");
        for (x = 0; x < type->dimx; ++x)
        {
            switch (type->base_type)
            {
                case HLSL_TYPE_FLOAT:
                    FUNC0("%g ", (double)constant->v.value.f[y * type->dimx + x]);
                    break;
                case HLSL_TYPE_DOUBLE:
                    FUNC0("%g ", constant->v.value.d[y * type->dimx + x]);
                    break;
                case HLSL_TYPE_INT:
                    FUNC0("%d ", constant->v.value.i[y * type->dimx + x]);
                    break;
                case HLSL_TYPE_UINT:
                    FUNC0("%u ", constant->v.value.u[y * type->dimx + x]);
                    break;
                case HLSL_TYPE_BOOL:
                    FUNC0("%s ", constant->v.value.b[y * type->dimx + x] == FALSE ? "false" : "true");
                    break;
                default:
                    FUNC0("Constants of type %s not supported\n", FUNC1(type));
            }
        }
        if (type->dimx != 1)
            FUNC0("}");
    }
    if (type->dimy != 1)
        FUNC0("}");
}