
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hlsl_ir_var {int data_type; } ;
struct TYPE_4__ {struct hlsl_ir_var* var; } ;
struct TYPE_3__ {int data_type; int type; } ;
struct hlsl_ir_deref {TYPE_2__ v; int type; TYPE_1__ node; } ;


 int ERR (char*) ;
 int HLSL_IR_DEREF ;
 int HLSL_IR_DEREF_VAR ;
 struct hlsl_ir_deref* d3dcompiler_alloc (int) ;

struct hlsl_ir_deref *new_var_deref(struct hlsl_ir_var *var)
{
    struct hlsl_ir_deref *deref = d3dcompiler_alloc(sizeof(*deref));

    if (!deref)
    {
        ERR("Out of memory.\n");
        return ((void*)0);
    }
    deref->node.type = HLSL_IR_DEREF;
    deref->node.data_type = var->data_type;
    deref->type = HLSL_IR_DEREF_VAR;
    deref->v.var = var;
    return deref;
}
