
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct symt {int dummy; } ;
struct symt_basic {struct symt symt; } ;
struct TYPE_12__ {char* string; int uvalue; } ;
struct attribute {TYPE_1__ u; } ;
struct TYPE_13__ {struct symt** symt_cache; int module; } ;
typedef TYPE_2__ dwarf2_parse_context_t ;
struct TYPE_14__ {struct symt* symt; } ;
typedef TYPE_3__ dwarf2_debug_info_t ;


 int DW_AT_name ;
 int FIXME (char*) ;
 int TRACE (char*,int ,int ) ;
 int btVoid ;
 int dwarf2_debug_ctx (TYPE_2__*) ;
 int dwarf2_debug_di (TYPE_3__*) ;
 int dwarf2_find_attribute (TYPE_2__*,TYPE_3__*,int ,struct attribute*) ;
 scalar_t__ dwarf2_get_di_children (TYPE_2__*,TYPE_3__*) ;
 size_t sc_void ;
 struct symt_basic* symt_new_basic (int ,int ,char*,int) ;

__attribute__((used)) static struct symt* dwarf2_parse_unspecified_type(dwarf2_parse_context_t* ctx,
                                           dwarf2_debug_info_t* di)
{
    struct attribute name;
    struct attribute size;
    struct symt_basic *basic;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (di->symt) return di->symt;

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name))
        name.u.string = "void";
    size.u.uvalue = sizeof(void *);

    basic = symt_new_basic(ctx->module, btVoid, name.u.string, size.u.uvalue);
    di->symt = &basic->symt;

    if (!ctx->symt_cache[sc_void])
        ctx->symt_cache[sc_void] = di->symt;

    if (dwarf2_get_di_children(ctx, di)) FIXME("Unsupported children\n");
    return di->symt;
}
