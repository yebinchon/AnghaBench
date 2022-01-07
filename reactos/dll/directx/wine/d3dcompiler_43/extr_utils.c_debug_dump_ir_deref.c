
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* field; int record; } ;
struct TYPE_7__ {int index; int array; } ;
struct TYPE_8__ {TYPE_2__ record; TYPE_3__ array; int var; } ;
struct hlsl_ir_deref {int type; TYPE_4__ v; } ;
struct TYPE_5__ {int name; } ;





 int TRACE (char*,...) ;
 int debug_dump_instr (int ) ;
 int debug_dump_ir_var (int ) ;
 int debugstr_a (int ) ;

__attribute__((used)) static void debug_dump_ir_deref(const struct hlsl_ir_deref *deref)
{
    switch (deref->type)
    {
        case 128:
            TRACE("deref(");
            debug_dump_ir_var(deref->v.var);
            TRACE(")");
            break;
        case 130:
            debug_dump_instr(deref->v.array.array);
            TRACE("[");
            debug_dump_instr(deref->v.array.index);
            TRACE("]");
            break;
        case 129:
            debug_dump_instr(deref->v.record.record);
            TRACE(".%s", debugstr_a(deref->v.record.field->name));
            break;
    }
}
