
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct TYPE_4__ {int data_type; struct source_location loc; int type; } ;
struct hlsl_ir_swizzle {int swizzle; struct hlsl_ir_node* val; TYPE_2__ node; } ;
struct hlsl_ir_node {TYPE_1__* data_type; } ;
struct TYPE_3__ {int base_type; } ;
typedef int DWORD ;


 int HLSL_CLASS_VECTOR ;
 int HLSL_IR_SWIZZLE ;
 struct hlsl_ir_swizzle* d3dcompiler_alloc (int) ;
 int new_hlsl_type (int *,int ,int ,unsigned int,int) ;

__attribute__((used)) static struct hlsl_ir_swizzle *new_swizzle(DWORD s, unsigned int components,
        struct hlsl_ir_node *val, struct source_location *loc)
{
    struct hlsl_ir_swizzle *swizzle = d3dcompiler_alloc(sizeof(*swizzle));

    if (!swizzle)
        return ((void*)0);
    swizzle->node.type = HLSL_IR_SWIZZLE;
    swizzle->node.loc = *loc;
    swizzle->node.data_type = new_hlsl_type(((void*)0), HLSL_CLASS_VECTOR, val->data_type->base_type, components, 1);
    swizzle->val = val;
    swizzle->swizzle = s;
    return swizzle;
}
