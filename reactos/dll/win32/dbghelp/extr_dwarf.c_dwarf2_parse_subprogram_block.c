
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct vector {int dummy; } ;
struct symt_block {int dummy; } ;
struct TYPE_27__ {TYPE_4__* func; TYPE_6__* ctx; } ;
typedef TYPE_2__ dwarf2_subprogram_t ;
struct TYPE_28__ {TYPE_1__* abbrev; } ;
typedef TYPE_3__ dwarf2_debug_info_t ;
struct TYPE_30__ {int module; scalar_t__ load_offset; } ;
struct TYPE_29__ {scalar_t__ address; } ;
struct TYPE_26__ {int tag; } ;
 int FIXME (char*,int,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 int WARN (char*) ;
 int dwarf2_debug_ctx (TYPE_6__*) ;
 int dwarf2_debug_di (TYPE_3__*) ;
 struct vector* dwarf2_get_di_children (TYPE_6__*,TYPE_3__*) ;
 int dwarf2_parse_const_type (TYPE_6__*,TYPE_3__*) ;
 int dwarf2_parse_inlined_subroutine (TYPE_2__*,struct symt_block*,TYPE_3__*) ;
 int dwarf2_parse_pointer_type (TYPE_6__*,TYPE_3__*) ;
 int dwarf2_parse_subprogram_label (TYPE_2__*,TYPE_3__*) ;
 int dwarf2_parse_subroutine_type (TYPE_6__*,TYPE_3__*) ;
 int dwarf2_parse_variable (TYPE_2__*,struct symt_block*,TYPE_3__*) ;
 int dwarf2_read_range (TYPE_6__*,TYPE_3__*,unsigned long*,unsigned long*) ;
 int symt_close_func_block (int ,TYPE_4__*,struct symt_block*,int ) ;
 struct symt_block* symt_open_func_block (int ,TYPE_4__*,struct symt_block*,scalar_t__,unsigned long) ;
 scalar_t__ vector_at (struct vector*,unsigned int) ;
 unsigned int vector_length (struct vector*) ;

__attribute__((used)) static void dwarf2_parse_subprogram_block(dwarf2_subprogram_t* subpgm,
                                          struct symt_block* parent_block,
       dwarf2_debug_info_t* di)
{
    struct symt_block* block;
    unsigned long low_pc, high_pc;
    struct vector* children;
    dwarf2_debug_info_t*child;
    unsigned int i;

    TRACE("%s, for %s\n", dwarf2_debug_ctx(subpgm->ctx), dwarf2_debug_di(di));

    if (!dwarf2_read_range(subpgm->ctx, di, &low_pc, &high_pc))
    {
        WARN("no range\n");
        return;
    }

    block = symt_open_func_block(subpgm->ctx->module, subpgm->func, parent_block,
                                 subpgm->ctx->load_offset + low_pc - subpgm->func->address,
                                 high_pc - low_pc);

    children = dwarf2_get_di_children(subpgm->ctx, di);
    if (children) for (i = 0; i < vector_length(children); i++)
    {
        child = *(dwarf2_debug_info_t**)vector_at(children, i);

        switch (child->abbrev->tag)
        {
        case 137:
            dwarf2_parse_inlined_subroutine(subpgm, block, child);
            break;
        case 128:
            dwarf2_parse_variable(subpgm, block, child);
            break;
        case 134:
            dwarf2_parse_pointer_type(subpgm->ctx, di);
            break;
        case 131:
            dwarf2_parse_subroutine_type(subpgm->ctx, di);
            break;
        case 141:
            dwarf2_parse_const_type(subpgm->ctx, di);
            break;
        case 135:
            dwarf2_parse_subprogram_block(subpgm, block, child);
            break;
        case 132:



            break;
        case 139:



            break;
        case 138:

            break;
        case 143:

            break;
        case 136:
            dwarf2_parse_subprogram_label(subpgm, child);
            break;
        case 142:
        case 133:
        case 129:
        case 140:
        case 130:

            break;
        default:
            FIXME("Unhandled Tag type 0x%lx at %s, for %s\n",
                  child->abbrev->tag, dwarf2_debug_ctx(subpgm->ctx), dwarf2_debug_di(di));
        }
    }

    symt_close_func_block(subpgm->ctx->module, subpgm->func, block, 0);
}
