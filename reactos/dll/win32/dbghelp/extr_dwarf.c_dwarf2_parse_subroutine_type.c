
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct vector {int dummy; } ;
struct symt {int dummy; } ;
struct symt_function_signature {struct symt symt; } ;
struct TYPE_13__ {int module; struct symt** symt_cache; } ;
typedef TYPE_2__ dwarf2_parse_context_t ;
struct TYPE_14__ {struct symt* symt; TYPE_1__* abbrev; } ;
typedef TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_12__ {int tag; } ;


 int CV_CALL_FAR_C ;


 int TRACE (char*,int ,int ) ;
 int WARN (char*) ;
 int assert (struct symt*) ;
 int dwarf2_debug_ctx (TYPE_2__*) ;
 int dwarf2_debug_di (TYPE_3__*) ;
 struct vector* dwarf2_get_di_children (TYPE_2__*,TYPE_3__*) ;
 struct symt* dwarf2_lookup_type (TYPE_2__*,TYPE_3__*) ;
 size_t sc_void ;
 int symt_add_function_signature_parameter (int ,struct symt_function_signature*,struct symt*) ;
 struct symt_function_signature* symt_new_function_signature (int ,struct symt*,int ) ;
 scalar_t__ vector_at (struct vector*,unsigned int) ;
 unsigned int vector_length (struct vector*) ;

__attribute__((used)) static struct symt* dwarf2_parse_subroutine_type(dwarf2_parse_context_t* ctx,
                                                 dwarf2_debug_info_t* di)
{
    struct symt* ret_type;
    struct symt_function_signature* sig_type;
    struct vector* children;
    dwarf2_debug_info_t* child;
    unsigned int i;

    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!(ret_type = dwarf2_lookup_type(ctx, di)))
    {
        ret_type = ctx->symt_cache[sc_void];
        assert(ret_type);
    }


    sig_type = symt_new_function_signature(ctx->module, ret_type, CV_CALL_FAR_C);

    children = dwarf2_get_di_children(ctx, di);
    if (children) for (i = 0; i < vector_length(children); i++)
    {
        child = *(dwarf2_debug_info_t**)vector_at(children, i);

        switch (child->abbrev->tag)
        {
        case 129:
            symt_add_function_signature_parameter(ctx->module, sig_type,
                                                  dwarf2_lookup_type(ctx, child));
            break;
        case 128:
            WARN("Unsupported unspecified parameters\n");
            break;
 }
    }

    return di->symt = &sig_type->symt;
}
