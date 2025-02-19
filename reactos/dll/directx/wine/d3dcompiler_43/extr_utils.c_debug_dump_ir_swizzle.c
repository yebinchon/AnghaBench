
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* data_type; } ;
struct hlsl_ir_swizzle {unsigned int swizzle; TYPE_3__ node; TYPE_4__* val; } ;
struct TYPE_8__ {TYPE_1__* data_type; } ;
struct TYPE_6__ {unsigned int dimx; } ;
struct TYPE_5__ {int dimy; } ;


 int TRACE (char*,...) ;
 int debug_dump_instr (TYPE_4__*) ;

__attribute__((used)) static void debug_dump_ir_swizzle(const struct hlsl_ir_swizzle *swizzle)
{
    unsigned int i;

    debug_dump_instr(swizzle->val);
    TRACE(".");
    if (swizzle->val->data_type->dimy > 1)
    {
        for (i = 0; i < swizzle->node.data_type->dimx; ++i)
            TRACE("_m%u%u", (swizzle->swizzle >> i * 8) & 0xf, (swizzle->swizzle >> (i * 8 + 4)) & 0xf);
    }
    else
    {
        static const char c[] = {'x', 'y', 'z', 'w'};

        for (i = 0; i < swizzle->node.data_type->dimx; ++i)
            TRACE("%c", c[(swizzle->swizzle >> i * 2) & 0x3]);
    }
}
