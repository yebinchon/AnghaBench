
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct hlsl_type {int dummy; } ;
struct hlsl_ir_node {int data_type; } ;
struct TYPE_2__ {struct hlsl_ir_node node; } ;


 int TRACE (char*,int ) ;
 scalar_t__ compare_hlsl_types (int ,struct hlsl_type*) ;
 int debug_hlsl_type (struct hlsl_type*) ;
 TYPE_1__* new_cast (struct hlsl_ir_node*,struct hlsl_type*,struct source_location*) ;

__attribute__((used)) static struct hlsl_ir_node *implicit_conversion(struct hlsl_ir_node *node, struct hlsl_type *type,
        struct source_location *loc)
{
    if (compare_hlsl_types(node->data_type, type))
        return node;
    TRACE("Implicit conversion of expression to %s\n", debug_hlsl_type(type));
    return &new_cast(node, type, loc)->node;
}
