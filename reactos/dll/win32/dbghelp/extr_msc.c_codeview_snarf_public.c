
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int len; int id; } ;
struct TYPE_22__ {int symtype; int offset; int segment; int name; } ;
struct TYPE_21__ {int symtype; int offset; int segment; int p_name; } ;
struct TYPE_20__ {int symtype; int offset; int segment; int p_name; } ;
struct TYPE_19__ {int symtype; int offset; int segment; int name; } ;
struct TYPE_18__ {int symtype; int offset; int segment; int p_name; } ;
struct TYPE_17__ {int symtype; int offset; int segment; int p_name; } ;
struct TYPE_16__ {int offset; int segment; int symtype; int name; } ;
struct TYPE_15__ {int offset; int segment; int p_name; } ;
struct TYPE_14__ {int offset; int segment; int symtype; int p_name; } ;
union codeview_symbol {TYPE_10__ generic; TYPE_9__ thread_v3; TYPE_8__ thread_v2; TYPE_7__ thread_v1; TYPE_6__ data_v3; TYPE_5__ data_v2; TYPE_4__ data_v1; TYPE_3__ public_v3; TYPE_2__ public_v2; TYPE_1__ public_v1; } ;
struct symt_compiland {int dummy; } ;
struct msc_debug_info {TYPE_11__* module; } ;
struct TYPE_13__ {void* sortlist_valid; } ;
typedef int BYTE ;
typedef void* BOOL ;


 void* FALSE ;
 int FIXME (char*,int) ;
 int SYMOPT_NO_PUBLICS ;
 int SYMTYPE_FUNCTION ;
 void* TRUE ;
 int codeview_add_variable (struct msc_debug_info const*,struct symt_compiland*,int ,int ,int ,int ,int,void*,void*) ;
 int codeview_get_address (struct msc_debug_info const*,int ,int ) ;
 int dbghelp_options ;
 int symt_new_public (TYPE_11__*,struct symt_compiland*,int ,int,int,...) ;
 int terminate_string (int *) ;

__attribute__((used)) static BOOL codeview_snarf_public(const struct msc_debug_info* msc_dbg, const BYTE* root,
                                  int offset, int size)

{
    int i, length;
    struct symt_compiland* compiland = ((void*)0);





    for (i = offset; i < size; i += length)
    {
        const union codeview_symbol* sym = (const union codeview_symbol*)(root + i);
        length = sym->generic.len + 2;
        if (i + length > size) break;
        if (!sym->generic.id || length < 4) break;
        if (length & 3) FIXME("unpadded len %u\n", length);

        switch (sym->generic.id)
        {
 case 130:
            if (!(dbghelp_options & SYMOPT_NO_PUBLICS))
            {
                symt_new_public(msc_dbg->module, compiland,
                                terminate_string(&sym->public_v1.p_name),
                                sym->public_v1.symtype == SYMTYPE_FUNCTION,
                                codeview_get_address(msc_dbg, sym->public_v1.segment, sym->public_v1.offset), 1);
            }
            break;
 case 129:
            if (!(dbghelp_options & SYMOPT_NO_PUBLICS))
            {
                symt_new_public(msc_dbg->module, compiland,
                                terminate_string(&sym->public_v2.p_name),
                                sym->public_v3.symtype == SYMTYPE_FUNCTION,
                                codeview_get_address(msc_dbg, sym->public_v2.segment, sym->public_v2.offset), 1);
            }
     break;

        case 128:
            if (!(dbghelp_options & SYMOPT_NO_PUBLICS))
            {
                symt_new_public(msc_dbg->module, compiland,
                                sym->public_v3.name,
                                sym->public_v3.symtype == SYMTYPE_FUNCTION,
                                codeview_get_address(msc_dbg, sym->public_v3.segment, sym->public_v3.offset), 1);
            }
            break;
        case 132:
        case 131:
            break;




 case 146:
 case 140:
            codeview_add_variable(msc_dbg, compiland, terminate_string(&sym->data_v1.p_name),
                                  sym->data_v1.segment, sym->data_v1.offset, sym->data_v1.symtype,
                                  sym->generic.id == 140, FALSE, FALSE);
     break;
 case 145:
 case 139:
            codeview_add_variable(msc_dbg, compiland, terminate_string(&sym->data_v2.p_name),
                                  sym->data_v2.segment, sym->data_v2.offset, sym->data_v2.symtype,
                                  sym->generic.id == 139, FALSE, FALSE);
     break;
 case 144:
 case 138:
            codeview_add_variable(msc_dbg, compiland, sym->data_v3.name,
                                  sym->data_v3.segment, sym->data_v3.offset, sym->data_v3.symtype,
                                  sym->generic.id == 138, FALSE, FALSE);
     break;


 case 143:
 case 136:
            codeview_add_variable(msc_dbg, compiland, terminate_string(&sym->thread_v1.p_name),
                                  sym->thread_v1.segment, sym->thread_v1.offset, sym->thread_v1.symtype,
                                  sym->generic.id == 136, TRUE, FALSE);
     break;
 case 142:
 case 135:
            codeview_add_variable(msc_dbg, compiland, terminate_string(&sym->thread_v2.p_name),
                                  sym->thread_v2.segment, sym->thread_v2.offset, sym->thread_v2.symtype,
                                  sym->generic.id == 135, TRUE, FALSE);
     break;
 case 141:
 case 134:
            codeview_add_variable(msc_dbg, compiland, sym->thread_v3.name,
                                  sym->thread_v3.segment, sym->thread_v3.offset, sym->thread_v3.symtype,
                                  sym->generic.id == 134, TRUE, FALSE);
     break;






 case 133:
 case 147:
 case 137:
            length += (((const char*)sym)[length] + 1 + 3) & ~3;
            break;
        }
        msc_dbg->module->sortlist_valid = TRUE;
    }
    msc_dbg->module->sortlist_valid = FALSE;
    return TRUE;
}
