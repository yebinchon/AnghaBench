
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct symt {int dummy; } ;
struct TYPE_13__ {int uvalue; int * string; } ;
struct attribute {TYPE_1__ u; } ;
typedef enum BasicType { ____Placeholder_BasicType } BasicType ;
struct TYPE_14__ {struct symt** symt_cache; int module; } ;
typedef TYPE_2__ dwarf2_parse_context_t ;
struct TYPE_15__ {struct symt* symt; } ;
typedef TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_16__ {struct symt symt; } ;
 int DW_AT_byte_size ;
 int DW_AT_encoding ;
 int DW_AT_name ;
 int FIXME (char*) ;
 int TRACE (char*,int ,int ) ;
 int assert (int) ;
 int btBool ;
 int btChar ;
 int btComplex ;
 int btFloat ;

 int btNoType ;
 int btUInt ;
 int btULong ;

 int dwarf2_debug_ctx (TYPE_2__*) ;
 int dwarf2_debug_di (TYPE_3__*) ;
 int dwarf2_find_attribute (TYPE_2__*,TYPE_3__*,int ,struct attribute*) ;
 scalar_t__ dwarf2_get_di_children (TYPE_2__*,TYPE_3__*) ;
 int sc_int1 ;
 int sc_int2 ;
 int sc_int4 ;
 int sc_void ;
 TYPE_4__* symt_new_basic (int ,int,int *,int) ;

__attribute__((used)) static struct symt* dwarf2_parse_base_type(dwarf2_parse_context_t* ctx,
                                           dwarf2_debug_info_t* di)
{
    struct attribute name;
    struct attribute size;
    struct attribute encoding;
    enum BasicType bt;
    int cache_idx = -1;
    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name))
        name.u.string = ((void*)0);
    if (!dwarf2_find_attribute(ctx, di, DW_AT_byte_size, &size)) size.u.uvalue = 0;
    if (!dwarf2_find_attribute(ctx, di, DW_AT_encoding, &encoding)) encoding.u.uvalue = 130;

    switch (encoding.u.uvalue)
    {
    case 130: bt = 128; break;
    case 138: bt = btULong; break;
    case 137: bt = btBool; break;
    case 136: bt = btComplex; break;
    case 135: bt = btFloat; break;
    case 134: bt = 129; break;
    case 132: bt = btUInt; break;
    case 133: bt = btChar; break;
    case 131: bt = btChar; break;
    default: bt = btNoType; break;
    }
    di->symt = &symt_new_basic(ctx->module, bt, name.u.string, size.u.uvalue)->symt;
    switch (bt)
    {
    case 128:
        assert(size.u.uvalue == 0);
        cache_idx = sc_void;
        break;
    case 129:
        switch (size.u.uvalue)
        {
        case 1: cache_idx = sc_int1; break;
        case 2: cache_idx = sc_int2; break;
        case 4: cache_idx = sc_int4; break;
        }
        break;
    default: break;
    }
    if (cache_idx != -1 && !ctx->symt_cache[cache_idx])
        ctx->symt_cache[cache_idx] = di->symt;

    if (dwarf2_get_di_children(ctx, di)) FIXME("Unsupported children\n");
    return di->symt;
}
