
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct symt {int dummy; } ;
struct TYPE_11__ {struct symt** symt_cache; } ;
typedef TYPE_1__ dwarf2_parse_context_t ;
struct TYPE_12__ {struct symt* symt; } ;
typedef TYPE_2__ dwarf2_debug_info_t ;


 int FIXME (char*) ;
 int TRACE (char*,int ,int ) ;
 int assert (struct symt*) ;
 int dwarf2_debug_ctx (TYPE_1__*) ;
 int dwarf2_debug_di (TYPE_2__*) ;
 scalar_t__ dwarf2_get_di_children (TYPE_1__*,TYPE_2__*) ;
 struct symt* dwarf2_lookup_type (TYPE_1__*,TYPE_2__*) ;
 size_t sc_void ;

__attribute__((used)) static struct symt* dwarf2_parse_volatile_type(dwarf2_parse_context_t* ctx,
                                               dwarf2_debug_info_t* di)
{
    struct symt* ref_type;

    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!(ref_type = dwarf2_lookup_type(ctx, di)))
    {
        ref_type = ctx->symt_cache[sc_void];
        assert(ref_type);
    }
    if (dwarf2_get_di_children(ctx, di)) FIXME("Unsupported children\n");
    di->symt = ref_type;

    return ref_type;
}
