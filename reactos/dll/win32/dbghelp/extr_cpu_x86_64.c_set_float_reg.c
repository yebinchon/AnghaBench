
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int Xmm0; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef int M128A ;
typedef TYPE_3__ CONTEXT ;



__attribute__((used)) static void set_float_reg(CONTEXT *context, int reg, M128A val)
{
    *(&context->u.s.Xmm0 + reg) = val;
}
