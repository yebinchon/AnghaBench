
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int record; } ;
struct TYPE_4__ {int index; int array; } ;
struct TYPE_6__ {TYPE_2__ record; TYPE_1__ array; } ;
struct hlsl_ir_deref {int type; TYPE_3__ v; } ;





 int d3dcompiler_free (struct hlsl_ir_deref*) ;
 int free_instr (int ) ;

__attribute__((used)) static void free_ir_deref(struct hlsl_ir_deref *deref)
{
    switch (deref->type)
    {
        case 128:

            break;
        case 130:
            free_instr(deref->v.array.array);
            free_instr(deref->v.array.index);
            break;
        case 129:
            free_instr(deref->v.record.record);
            break;
    }
    d3dcompiler_free(deref);
}
