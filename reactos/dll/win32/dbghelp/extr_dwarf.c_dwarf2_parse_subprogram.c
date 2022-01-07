
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_9__ ;
typedef struct TYPE_46__ TYPE_6__ ;
typedef struct TYPE_45__ TYPE_5__ ;
typedef struct TYPE_44__ TYPE_4__ ;
typedef struct TYPE_43__ TYPE_3__ ;
typedef struct TYPE_42__ TYPE_39__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


struct vector {int dummy; } ;
struct symt_function_signature {int symt; } ;
struct symt {int dummy; } ;
struct TYPE_40__ {scalar_t__ uvalue; int string; } ;
struct attribute {scalar_t__ gotten_from; TYPE_1__ u; } ;
struct TYPE_47__ {scalar_t__ kind; scalar_t__ offset; int reg; } ;
struct TYPE_43__ {TYPE_6__* func; TYPE_4__* ctx; TYPE_9__ frame; scalar_t__ non_computed_variable; } ;
typedef TYPE_3__ dwarf2_subprogram_t ;
struct TYPE_44__ {int module; scalar_t__ load_offset; int compiland; struct symt** symt_cache; int thunks; } ;
typedef TYPE_4__ dwarf2_parse_context_t ;
struct TYPE_45__ {struct symt* symt; TYPE_2__* abbrev; } ;
typedef TYPE_5__ dwarf2_debug_info_t ;
struct TYPE_46__ {struct symt symt; } ;
struct TYPE_42__ {int frame_regno; } ;
struct TYPE_41__ {int tag; } ;


 int CV_CALL_FAR_C ;
 int DW_AT_declaration ;
 int DW_AT_frame_base ;
 int DW_AT_inline ;
 int DW_AT_name ;
 scalar_t__ DW_INL_not_inlined ;
 scalar_t__ FALSE ;
 int FIXME (char*,int,int ,scalar_t__) ;
 int SymTagCustom ;
 int TRACE (char*,int ,scalar_t__) ;
 int WARN (char*,...) ;
 int assert (struct symt*) ;
 scalar_t__ attr_direct ;
 TYPE_39__* dbghelp_current_cpu ;
 int debugstr_a (int ) ;
 int dwarf2_compute_location_attr (TYPE_4__*,TYPE_5__*,int ,TYPE_9__*,int *) ;
 int dwarf2_debug_ctx (TYPE_4__*) ;
 scalar_t__ dwarf2_debug_di (TYPE_5__*) ;
 scalar_t__ dwarf2_find_attribute (TYPE_4__*,TYPE_5__*,int ,struct attribute*) ;
 int dwarf2_get_cpp_name (TYPE_4__*,TYPE_5__*,int ) ;
 struct vector* dwarf2_get_di_children (TYPE_4__*,TYPE_5__*) ;
 struct symt* dwarf2_lookup_type (TYPE_4__*,TYPE_5__*) ;
 int dwarf2_parse_const_type (TYPE_4__*,TYPE_5__*) ;
 int dwarf2_parse_inlined_subroutine (TYPE_3__*,int *,TYPE_5__*) ;
 int dwarf2_parse_pointer_type (TYPE_4__*,TYPE_5__*) ;
 int dwarf2_parse_subprogram_block (TYPE_3__*,int *,TYPE_5__*) ;
 int dwarf2_parse_subprogram_label (TYPE_3__*,TYPE_5__*) ;
 int dwarf2_parse_variable (TYPE_3__*,int *,TYPE_5__*) ;
 int dwarf2_read_range (TYPE_4__*,TYPE_5__*,unsigned long*,unsigned long*) ;
 scalar_t__ elf_is_in_thunk_area (scalar_t__,int ) ;
 scalar_t__ loc_regrel ;
 scalar_t__ loc_user ;
 size_t sc_void ;
 int symt_add_function_point (int ,TYPE_6__*,int ,TYPE_9__*,int *) ;
 TYPE_6__* symt_new_function (int ,int ,int ,scalar_t__,unsigned long,int *) ;
 struct symt_function_signature* symt_new_function_signature (int ,struct symt*,int ) ;
 int symt_normalize_function (int ,TYPE_6__*) ;
 scalar_t__ vector_at (struct vector*,unsigned int) ;
 unsigned int vector_length (struct vector*) ;

__attribute__((used)) static struct symt* dwarf2_parse_subprogram(dwarf2_parse_context_t* ctx,
                                            dwarf2_debug_info_t* di)
{
    struct attribute name;
    unsigned long low_pc, high_pc;
    struct attribute is_decl;
    struct attribute inline_flags;
    struct symt* ret_type;
    struct symt_function_signature* sig_type;
    dwarf2_subprogram_t subpgm;
    struct vector* children;
    dwarf2_debug_info_t* child;
    unsigned int i;

    if (di->symt) return di->symt;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));

    if (!dwarf2_find_attribute(ctx, di, DW_AT_name, &name))
    {
        WARN("No name for function... dropping function\n");
        return ((void*)0);
    }



    if (dwarf2_find_attribute(ctx, di, DW_AT_inline, &inline_flags) &&
        inline_flags.u.uvalue != DW_INL_not_inlined)
    {
        TRACE("Function %s declared as inlined (%ld)... skipping\n",
              debugstr_a(name.u.string), inline_flags.u.uvalue);
        return ((void*)0);
    }

    if (dwarf2_find_attribute(ctx, di, DW_AT_declaration, &is_decl) &&
        is_decl.u.uvalue && is_decl.gotten_from == attr_direct)
    {

        return ((void*)0);
    }
    if (!dwarf2_read_range(ctx, di, &low_pc, &high_pc))
    {
        WARN("cannot get range for %s\n", name.u.string);
        return ((void*)0);
    }





    if (elf_is_in_thunk_area(ctx->load_offset + low_pc, ctx->thunks) >= 0)
        return ((void*)0);

    if (!(ret_type = dwarf2_lookup_type(ctx, di)))
    {
        ret_type = ctx->symt_cache[sc_void];
        assert(ret_type);
    }

    sig_type = symt_new_function_signature(ctx->module, ret_type, CV_CALL_FAR_C);
    subpgm.func = symt_new_function(ctx->module, ctx->compiland,
                                    dwarf2_get_cpp_name(ctx, di, name.u.string),
                                    ctx->load_offset + low_pc, high_pc - low_pc,
                                    &sig_type->symt);
    di->symt = &subpgm.func->symt;
    subpgm.ctx = ctx;
    if (!dwarf2_compute_location_attr(ctx, di, DW_AT_frame_base,
                                      &subpgm.frame, ((void*)0)))
    {

        subpgm.frame.kind = loc_regrel;
        subpgm.frame.reg = dbghelp_current_cpu->frame_regno;
        subpgm.frame.offset = 0;
    }
    subpgm.non_computed_variable = FALSE;

    children = dwarf2_get_di_children(ctx, di);
    if (children) for (i = 0; i < vector_length(children); i++)
    {
        child = *(dwarf2_debug_info_t**)vector_at(children, i);

        switch (child->abbrev->tag)
        {
        case 128:
        case 140:
            dwarf2_parse_variable(&subpgm, ((void*)0), child);
            break;
        case 137:
            dwarf2_parse_subprogram_block(&subpgm, ((void*)0), child);
            break;
        case 139:
            dwarf2_parse_inlined_subroutine(&subpgm, ((void*)0), child);
            break;
        case 136:
            dwarf2_parse_pointer_type(subpgm.ctx, di);
            break;
        case 142:
            dwarf2_parse_const_type(subpgm.ctx, di);
            break;
        case 134:



            break;
        case 138:
            dwarf2_parse_subprogram_label(&subpgm, child);
            break;
        case 143:
        case 135:
        case 130:
        case 141:
        case 131:

            break;
        case 129:
        case 133:
        case 132:
        case 146:
        case 144:
        case 145:

            break;
        default:
            FIXME("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, dwarf2_debug_ctx(ctx), dwarf2_debug_di(di));
 }
    }

    if (subpgm.non_computed_variable || subpgm.frame.kind >= loc_user)
    {
        symt_add_function_point(ctx->module, subpgm.func, SymTagCustom,
                                &subpgm.frame, ((void*)0));
    }
    if (subpgm.func) symt_normalize_function(subpgm.ctx->module, subpgm.func);

    return di->symt;
}
