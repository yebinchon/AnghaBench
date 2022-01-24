#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct module_pair {TYPE_4__* effective; int /*<<< orphan*/  pcs; TYPE_4__* requested; } ;
typedef  int /*<<< orphan*/  idslW64 ;
struct TYPE_11__ {scalar_t__ SymType; int /*<<< orphan*/  NumSyms; int /*<<< orphan*/  ImageName; int /*<<< orphan*/  TimeDateStamp; int /*<<< orphan*/  CheckSum; int /*<<< orphan*/  BaseOfImage; } ;
struct TYPE_10__ {int /*<<< orphan*/  num_elts; } ;
struct TYPE_13__ {int type; TYPE_2__ module; TYPE_1__ ht_symbols; scalar_t__ is_virtual; } ;
struct TYPE_12__ {int SizeOfStruct; int Reparse; int /*<<< orphan*/  hFile; int /*<<< orphan*/  FileName; int /*<<< orphan*/  TimeDateStamp; int /*<<< orphan*/  CheckSum; int /*<<< orphan*/  BaseOfImage; } ;
typedef  TYPE_3__ IMAGEHLP_DEFERRED_SYMBOL_LOADW64 ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CBA_DEFERRED_SYMBOL_LOAD_COMPLETE ; 
 int /*<<< orphan*/  CBA_DEFERRED_SYMBOL_LOAD_FAILURE ; 
 int /*<<< orphan*/  CBA_DEFERRED_SYMBOL_LOAD_START ; 
#define  DMT_ELF 130 
#define  DMT_MACHO 129 
#define  DMT_PE 128 
 int FALSE ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 scalar_t__ SymDeferred ; 
 scalar_t__ SymNone ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 

BOOL FUNC7(struct module_pair* pair)
{
    IMAGEHLP_DEFERRED_SYMBOL_LOADW64    idslW64;

    if (!pair->requested) return FALSE;
    /* for a PE builtin, always get info from container */
    if (!(pair->effective = FUNC4(pair->pcs, pair->requested)))
        pair->effective = pair->requested;
    /* if deferred, force loading */
    if (pair->effective->module.SymType == SymDeferred)
    {
        BOOL ret;
        
        if (pair->effective->is_virtual) ret = FALSE;
        else switch (pair->effective->type)
        {
#ifndef DBGHELP_STATIC_LIB
        case DMT_ELF:
            ret = FUNC1(pair->effective);
            break;
#endif
        case DMT_PE:
            idslW64.SizeOfStruct = sizeof(idslW64);
            idslW64.BaseOfImage = pair->effective->module.BaseOfImage;
            idslW64.CheckSum = pair->effective->module.CheckSum;
            idslW64.TimeDateStamp = pair->effective->module.TimeDateStamp;
            FUNC3(idslW64.FileName, pair->effective->module.ImageName,
                   sizeof(pair->effective->module.ImageName));
            idslW64.Reparse = FALSE;
            idslW64.hFile = INVALID_HANDLE_VALUE;

            FUNC5(pair->pcs, CBA_DEFERRED_SYMBOL_LOAD_START, &idslW64);
            ret = FUNC6(pair->pcs, pair->effective);
            FUNC5(pair->pcs,
                         ret ? CBA_DEFERRED_SYMBOL_LOAD_COMPLETE : CBA_DEFERRED_SYMBOL_LOAD_FAILURE,
                         &idslW64);
            break;
#ifndef DBGHELP_STATIC_LIB
        case DMT_MACHO:
            ret = FUNC2(pair->effective);
            break;
#endif
        default:
            ret = FALSE;
            break;
        }
        if (!ret) pair->effective->module.SymType = SymNone;
        FUNC0(pair->effective->module.SymType != SymDeferred);
        pair->effective->module.NumSyms = pair->effective->ht_symbols.num_elts;
    }
    return pair->effective->module.SymType != SymNone;
}