
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_3__ {struct list* elements; } ;
struct hlsl_type {char const* name; int dimx; int dimy; int entry; TYPE_1__ e; int modifiers; int type; } ;
struct TYPE_4__ {int types; } ;
typedef int DWORD ;


 int ERR (char*) ;
 int HLSL_CLASS_STRUCT ;
 struct hlsl_type* d3dcompiler_alloc (int) ;
 TYPE_2__ hlsl_ctx ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct hlsl_type *new_struct_type(const char *name, DWORD modifiers, struct list *fields)
{
    struct hlsl_type *type = d3dcompiler_alloc(sizeof(*type));

    if (!type)
    {
        ERR("Out of memory.\n");
        return ((void*)0);
    }
    type->type = HLSL_CLASS_STRUCT;
    type->name = name;
    type->dimx = type->dimy = 1;
    type->modifiers = modifiers;
    type->e.elements = fields;

    list_add_tail(&hlsl_ctx.types, &type->entry);

    return type;
}
