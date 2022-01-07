
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list {int dummy; } ;
struct hlsl_type {int dummy; } ;
struct hlsl_ir_function_decl {struct list* parameters; struct hlsl_type* return_type; } ;


 int ERR (char*) ;
 struct hlsl_ir_function_decl* d3dcompiler_alloc (int) ;

struct hlsl_ir_function_decl *new_func_decl(struct hlsl_type *return_type, struct list *parameters)
{
    struct hlsl_ir_function_decl *decl;

    decl = d3dcompiler_alloc(sizeof(*decl));
    if (!decl)
    {
        ERR("Out of memory.\n");
        return ((void*)0);
    }
    decl->return_type = return_type;
    decl->parameters = parameters;

    return decl;
}
