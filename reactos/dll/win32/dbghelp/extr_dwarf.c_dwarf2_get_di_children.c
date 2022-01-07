
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct vector {int dummy; } ;
struct TYPE_11__ {int uvalue; } ;
struct attribute {TYPE_2__ u; } ;
struct TYPE_12__ {int debug_info_table; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_13__ {struct vector children; TYPE_1__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_10__ {scalar_t__ have_child; } ;


 int DW_AT_specification ;
 int FIXME (char*) ;
 int dwarf2_find_attribute (TYPE_3__*,TYPE_4__*,int ,struct attribute*) ;
 TYPE_4__* sparse_array_find (int *,int ) ;

__attribute__((used)) static struct vector* dwarf2_get_di_children(dwarf2_parse_context_t* ctx,
                                             dwarf2_debug_info_t* di)
{
    struct attribute spec;

    while (di)
    {
        if (di->abbrev->have_child)
            return &di->children;
        if (!dwarf2_find_attribute(ctx, di, DW_AT_specification, &spec)) break;
        if (!(di = sparse_array_find(&ctx->debug_info_table, spec.u.uvalue)))
            FIXME("Should have found the debug info entry\n");
    }
    return ((void*)0);
}
