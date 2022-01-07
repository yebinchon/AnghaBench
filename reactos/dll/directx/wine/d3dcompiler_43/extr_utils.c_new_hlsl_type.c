
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hlsl_type {char const* name; int type; int base_type; unsigned int dimx; unsigned int dimy; int entry; } ;
typedef enum hlsl_type_class { ____Placeholder_hlsl_type_class } hlsl_type_class ;
typedef enum hlsl_base_type { ____Placeholder_hlsl_base_type } hlsl_base_type ;
struct TYPE_2__ {int types; } ;


 int ERR (char*) ;
 struct hlsl_type* d3dcompiler_alloc (int) ;
 TYPE_1__ hlsl_ctx ;
 int list_add_tail (int *,int *) ;

struct hlsl_type *new_hlsl_type(const char *name, enum hlsl_type_class type_class,
        enum hlsl_base_type base_type, unsigned dimx, unsigned dimy)
{
    struct hlsl_type *type;

    type = d3dcompiler_alloc(sizeof(*type));
    if (!type)
    {
        ERR("Out of memory\n");
        return ((void*)0);
    }
    type->name = name;
    type->type = type_class;
    type->base_type = base_type;
    type->dimx = dimx;
    type->dimy = dimy;

    list_add_tail(&hlsl_ctx.types, &type->entry);

    return type;
}
