
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct location {scalar_t__ kind; int reg; unsigned long offset; } ;
struct TYPE_16__ {int size; int ptr; } ;
struct TYPE_17__ {unsigned long uvalue; TYPE_5__ block; } ;
struct attribute {int form; TYPE_6__ u; } ;
typedef enum location_error { ____Placeholder_location_error } location_error ;
struct TYPE_18__ {int data; int end_data; int word_size; } ;
typedef TYPE_7__ dwarf2_traverse_context_t ;
struct TYPE_19__ {TYPE_4__* module; } ;
typedef TYPE_8__ dwarf2_parse_context_t ;
typedef int dwarf2_debug_info_t ;
struct TYPE_15__ {int pool; TYPE_3__** format_info; } ;
struct TYPE_13__ {TYPE_1__* dwarf2_info; } ;
struct TYPE_14__ {TYPE_2__ u; } ;
struct TYPE_12__ {int word_size; } ;
typedef int BOOL ;


 size_t DFI_DWARF ;
 int FALSE ;
 int FIXME (char*,int) ;
 int TRUE ;
 int Wine_DW_no_register ;
 int compute_location (TYPE_7__*,struct location*,int *,struct location const*) ;
 int dwarf2_find_attribute (TYPE_8__*,int const*,unsigned long,struct attribute*) ;
 scalar_t__ loc_absolute ;
 scalar_t__ loc_dwarf2_block ;
 scalar_t__ loc_dwarf2_location_list ;
 scalar_t__ loc_error ;
 int memcpy (unsigned int*,int,unsigned int) ;
 unsigned int* pool_alloc (int *,int) ;

__attribute__((used)) static BOOL dwarf2_compute_location_attr(dwarf2_parse_context_t* ctx,
                                         const dwarf2_debug_info_t* di,
                                         unsigned long dw,
                                         struct location* loc,
                                         const struct location* frame)
{
    struct attribute xloc;

    if (!dwarf2_find_attribute(ctx, di, dw, &xloc)) return FALSE;

    switch (xloc.form)
    {
    case 133: case 132:
    case 128: case 129:
        loc->kind = loc_absolute;
        loc->reg = 0;
        loc->offset = xloc.u.uvalue;
        return TRUE;
    case 131: case 130:
        loc->kind = loc_dwarf2_location_list;
        loc->reg = Wine_DW_no_register;
        loc->offset = xloc.u.uvalue;
        return TRUE;
    case 137:
    case 136:
    case 135:
    case 134:
        break;
    default: FIXME("Unsupported yet form %lx\n", xloc.form);
        return FALSE;
    }



    if (xloc.u.block.size)
    {
        dwarf2_traverse_context_t lctx;
        enum location_error err;

        lctx.data = xloc.u.block.ptr;
        lctx.end_data = xloc.u.block.ptr + xloc.u.block.size;
        lctx.word_size = ctx->module->format_info[DFI_DWARF]->u.dwarf2_info->word_size;

        err = compute_location(&lctx, loc, ((void*)0), frame);
        if (err < 0)
        {
            loc->kind = loc_error;
            loc->reg = err;
        }
        else if (loc->kind == loc_dwarf2_block)
        {
            unsigned* ptr = pool_alloc(&ctx->module->pool,
                                         sizeof(unsigned) + xloc.u.block.size);
            *ptr = xloc.u.block.size;
            memcpy(ptr + 1, xloc.u.block.ptr, xloc.u.block.size);

            loc->offset = (unsigned long)ptr;



        }
    }
    return TRUE;
}
