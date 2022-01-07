
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hlsl_type {int dimy; int dimx; int base_type; } ;
struct TYPE_5__ {int * b; int * u; int * i; int * d; scalar_t__* f; } ;
struct TYPE_6__ {TYPE_2__ value; } ;
struct TYPE_4__ {struct hlsl_type* data_type; } ;
struct hlsl_ir_constant {TYPE_3__ v; TYPE_1__ node; } ;


 int FALSE ;





 int TRACE (char*,...) ;
 int debug_base_type (struct hlsl_type*) ;

__attribute__((used)) static void debug_dump_ir_constant(const struct hlsl_ir_constant *constant)
{
    struct hlsl_type *type = constant->node.data_type;
    unsigned int x, y;

    if (type->dimy != 1)
        TRACE("{");
    for (y = 0; y < type->dimy; ++y)
    {
        if (type->dimx != 1)
            TRACE("{");
        for (x = 0; x < type->dimx; ++x)
        {
            switch (type->base_type)
            {
                case 130:
                    TRACE("%g ", (double)constant->v.value.f[y * type->dimx + x]);
                    break;
                case 131:
                    TRACE("%g ", constant->v.value.d[y * type->dimx + x]);
                    break;
                case 129:
                    TRACE("%d ", constant->v.value.i[y * type->dimx + x]);
                    break;
                case 128:
                    TRACE("%u ", constant->v.value.u[y * type->dimx + x]);
                    break;
                case 132:
                    TRACE("%s ", constant->v.value.b[y * type->dimx + x] == FALSE ? "false" : "true");
                    break;
                default:
                    TRACE("Constants of type %s not supported\n", debug_base_type(type));
            }
        }
        if (type->dimx != 1)
            TRACE("}");
    }
    if (type->dimy != 1)
        TRACE("}");
}
