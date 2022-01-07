
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct module_pair {TYPE_4__* effective; int pcs; TYPE_4__* requested; } ;
typedef int idslW64 ;
struct TYPE_11__ {scalar_t__ SymType; int NumSyms; int ImageName; int TimeDateStamp; int CheckSum; int BaseOfImage; } ;
struct TYPE_10__ {int num_elts; } ;
struct TYPE_13__ {int type; TYPE_2__ module; TYPE_1__ ht_symbols; scalar_t__ is_virtual; } ;
struct TYPE_12__ {int SizeOfStruct; int Reparse; int hFile; int FileName; int TimeDateStamp; int CheckSum; int BaseOfImage; } ;
typedef TYPE_3__ IMAGEHLP_DEFERRED_SYMBOL_LOADW64 ;
typedef int BOOL ;


 int CBA_DEFERRED_SYMBOL_LOAD_COMPLETE ;
 int CBA_DEFERRED_SYMBOL_LOAD_FAILURE ;
 int CBA_DEFERRED_SYMBOL_LOAD_START ;



 int FALSE ;
 int INVALID_HANDLE_VALUE ;
 scalar_t__ SymDeferred ;
 scalar_t__ SymNone ;
 int assert (int) ;
 int elf_load_debug_info (TYPE_4__*) ;
 int macho_load_debug_info (TYPE_4__*) ;
 int memcpy (int ,int ,int) ;
 TYPE_4__* module_get_container (int ,TYPE_4__*) ;
 int pcs_callback (int ,int ,TYPE_3__*) ;
 int pe_load_debug_info (int ,TYPE_4__*) ;

BOOL module_get_debug(struct module_pair* pair)
{
    IMAGEHLP_DEFERRED_SYMBOL_LOADW64 idslW64;

    if (!pair->requested) return FALSE;

    if (!(pair->effective = module_get_container(pair->pcs, pair->requested)))
        pair->effective = pair->requested;

    if (pair->effective->module.SymType == SymDeferred)
    {
        BOOL ret;

        if (pair->effective->is_virtual) ret = FALSE;
        else switch (pair->effective->type)
        {

        case 130:
            ret = elf_load_debug_info(pair->effective);
            break;

        case 128:
            idslW64.SizeOfStruct = sizeof(idslW64);
            idslW64.BaseOfImage = pair->effective->module.BaseOfImage;
            idslW64.CheckSum = pair->effective->module.CheckSum;
            idslW64.TimeDateStamp = pair->effective->module.TimeDateStamp;
            memcpy(idslW64.FileName, pair->effective->module.ImageName,
                   sizeof(pair->effective->module.ImageName));
            idslW64.Reparse = FALSE;
            idslW64.hFile = INVALID_HANDLE_VALUE;

            pcs_callback(pair->pcs, CBA_DEFERRED_SYMBOL_LOAD_START, &idslW64);
            ret = pe_load_debug_info(pair->pcs, pair->effective);
            pcs_callback(pair->pcs,
                         ret ? CBA_DEFERRED_SYMBOL_LOAD_COMPLETE : CBA_DEFERRED_SYMBOL_LOAD_FAILURE,
                         &idslW64);
            break;

        case 129:
            ret = macho_load_debug_info(pair->effective);
            break;

        default:
            ret = FALSE;
            break;
        }
        if (!ret) pair->effective->module.SymType = SymNone;
        assert(pair->effective->module.SymType != SymDeferred);
        pair->effective->module.NumSyms = pair->effective->ht_symbols.num_elts;
    }
    return pair->effective->module.SymType != SymNone;
}
