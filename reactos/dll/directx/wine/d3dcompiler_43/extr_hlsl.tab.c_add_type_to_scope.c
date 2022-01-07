
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_type {int scope_entry; int name; } ;
struct hlsl_scope {int types; } ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ get_type (struct hlsl_scope*,int ,int ) ;
 int wine_rb_put (int *,int ,int *) ;

__attribute__((used)) static BOOL add_type_to_scope(struct hlsl_scope *scope, struct hlsl_type *def)
{
    if (get_type(scope, def->name, FALSE))
        return FALSE;

    wine_rb_put(&scope->types, def->name, &def->scope_entry);
    return TRUE;
}
