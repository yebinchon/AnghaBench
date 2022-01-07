
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hlsl_struct_field {int type; } ;
struct hlsl_ir_node {int dummy; } ;
struct TYPE_4__ {struct hlsl_struct_field* field; struct hlsl_ir_node* record; } ;
struct TYPE_5__ {TYPE_1__ record; } ;
struct TYPE_6__ {int data_type; int type; } ;
struct hlsl_ir_deref {TYPE_2__ v; int type; TYPE_3__ node; } ;


 int ERR (char*) ;
 int HLSL_IR_DEREF ;
 int HLSL_IR_DEREF_RECORD ;
 struct hlsl_ir_deref* d3dcompiler_alloc (int) ;

struct hlsl_ir_deref *new_record_deref(struct hlsl_ir_node *record, struct hlsl_struct_field *field)
{
    struct hlsl_ir_deref *deref = d3dcompiler_alloc(sizeof(*deref));

    if (!deref)
    {
        ERR("Out of memory.\n");
        return ((void*)0);
    }
    deref->node.type = HLSL_IR_DEREF;
    deref->node.data_type = field->type;
    deref->type = HLSL_IR_DEREF_RECORD;
    deref->v.record.record = record;
    deref->v.record.field = field;
    return deref;
}
