
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {int reg; int offset; int kind; } ;
struct TYPE_23__ {TYPE_1__ frame; int * func; int * ctx; } ;
typedef TYPE_3__ dwarf2_subprogram_t ;
typedef int dwarf2_parse_context_t ;
struct TYPE_24__ {TYPE_2__* abbrev; } ;
typedef TYPE_4__ dwarf2_debug_info_t ;
struct TYPE_22__ {int tag; int entry_code; } ;
 int FIXME (char*,int,int ,int ) ;
 int UdtClass ;
 int UdtStruct ;
 int UdtUnion ;
 int Wine_DW_no_register ;
 int dwarf2_debug_ctx (int *) ;
 int dwarf2_parse_array_type (int *,TYPE_4__*) ;
 int dwarf2_parse_base_type (int *,TYPE_4__*) ;
 int dwarf2_parse_const_type (int *,TYPE_4__*) ;
 int dwarf2_parse_enumeration_type (int *,TYPE_4__*) ;
 int dwarf2_parse_namespace (int *,TYPE_4__*) ;
 int dwarf2_parse_pointer_type (int *,TYPE_4__*) ;
 int dwarf2_parse_reference_type (int *,TYPE_4__*) ;
 int dwarf2_parse_subprogram (int *,TYPE_4__*) ;
 int dwarf2_parse_subroutine_type (int *,TYPE_4__*) ;
 int dwarf2_parse_typedef (int *,TYPE_4__*) ;
 int dwarf2_parse_udt_type (int *,TYPE_4__*,int ) ;
 int dwarf2_parse_unspecified_type (int *,TYPE_4__*) ;
 int dwarf2_parse_variable (TYPE_3__*,int *,TYPE_4__*) ;
 int dwarf2_parse_volatile_type (int *,TYPE_4__*) ;
 int loc_absolute ;

__attribute__((used)) static void dwarf2_load_one_entry(dwarf2_parse_context_t* ctx,
                                  dwarf2_debug_info_t* di)
{
    switch (di->abbrev->tag)
    {
    case 132:
        dwarf2_parse_typedef(ctx, di);
        break;
    case 145:
        dwarf2_parse_base_type(ctx, di);
        break;
    case 138:
        dwarf2_parse_pointer_type(ctx, di);
        break;
    case 144:
        dwarf2_parse_udt_type(ctx, di, UdtClass);
        break;
    case 135:
        dwarf2_parse_udt_type(ctx, di, UdtStruct);
        break;
    case 131:
        dwarf2_parse_udt_type(ctx, di, UdtUnion);
        break;
    case 146:
        dwarf2_parse_array_type(ctx, di);
        break;
    case 143:
        dwarf2_parse_const_type(ctx, di);
        break;
    case 128:
        dwarf2_parse_volatile_type(ctx, di);
        break;
    case 130:
        dwarf2_parse_unspecified_type(ctx, di);
        break;
    case 136:
        dwarf2_parse_reference_type(ctx, di);
        break;
    case 142:
        dwarf2_parse_enumeration_type(ctx, di);
        break;
    case 134:
        dwarf2_parse_subprogram(ctx, di);
        break;
    case 133:
        dwarf2_parse_subroutine_type(ctx, di);
        break;
    case 129:
        {
            dwarf2_subprogram_t subpgm;

            subpgm.ctx = ctx;
            subpgm.func = ((void*)0);
            subpgm.frame.kind = loc_absolute;
            subpgm.frame.offset = 0;
            subpgm.frame.reg = Wine_DW_no_register;
            dwarf2_parse_variable(&subpgm, ((void*)0), di);
        }
        break;
    case 139:
        dwarf2_parse_namespace(ctx, di);
        break;

    case 140:
    case 141:
    case 137:
        break;
    default:
        FIXME("Unhandled Tag type 0x%lx at %s, for %lu\n",
              di->abbrev->tag, dwarf2_debug_ctx(ctx), di->abbrev->entry_code);
    }
}
