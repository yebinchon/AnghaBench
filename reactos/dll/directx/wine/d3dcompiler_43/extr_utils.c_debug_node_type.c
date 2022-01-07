
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum hlsl_ir_node_type { ____Placeholder_hlsl_ir_node_type } hlsl_ir_node_type ;


 int ARRAY_SIZE (char const* const*) ;

__attribute__((used)) static const char *debug_node_type(enum hlsl_ir_node_type type)
{
    static const char * const names[] =
    {
        "HLSL_IR_ASSIGNMENT",
        "HLSL_IR_CONSTANT",
        "HLSL_IR_CONSTRUCTOR",
        "HLSL_IR_DEREF",
        "HLSL_IR_EXPR",
        "HLSL_IR_IF",
        "HLSL_IR_JUMP",
        "HLSL_IR_SWIZZLE",
    };

    if (type >= ARRAY_SIZE(names))
        return "Unexpected node type";
    return names[type];
}
