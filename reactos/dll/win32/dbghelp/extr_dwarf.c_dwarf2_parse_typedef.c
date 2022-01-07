
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct symt {int dummy; } ;
struct TYPE_15__ {int * string; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_17__ {int module; } ;
typedef TYPE_3__ dwarf2_parse_context_t ;
struct TYPE_18__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_19__ {struct symt symt; } ;
struct TYPE_16__ {int entry_code; } ;


 int DW_AT_name ;
 int FIXME (char*) ;
 int TRACE (char*,int ,int ) ;
 int dwarf2_debug_ctx (TYPE_3__*) ;
 int dwarf2_find_attribute (TYPE_3__*,TYPE_4__*,int ,struct attribute*) ;
 scalar_t__ dwarf2_get_di_children (TYPE_3__*,TYPE_4__*) ;
 struct symt* dwarf2_lookup_type (TYPE_3__*,TYPE_4__*) ;
 TYPE_5__* symt_new_typedef (int ,struct symt*,int *) ;

__attribute__((used)) static struct symt* dwarf2_parse_typedef(dwarf2_parse_context_t* ctx,
                                         dwarf2_debug_info_t* di)
{
    struct symt* ref_type;
    struct attribute name;

    if (di->symt) return di->symt;

    TRACE("%s, for %lu\n", dwarf2_debug_ctx(ctx), di->abbrev->entry_code);

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name)) name.u.string = ((void*)0);
    ref_type = dwarf2_lookup_type(ctx, di);

    if (name.u.string)
        di->symt = &symt_new_typedef(ctx->module, ref_type, name.u.string)->symt;
    if (dwarf2_get_di_children(ctx, di)) FIXME("Unsupported children\n");
    return di->symt;
}
