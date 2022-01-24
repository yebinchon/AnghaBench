#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vector {int dummy; } ;
struct symt_function {int dummy; } ;
struct symt_block {struct vector vchildren; scalar_t__ size; scalar_t__ address; } ;
struct symt {int tag; } ;
struct sym_enum {int dummy; } ;
struct module_pair {TYPE_2__* pcs; } ;
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {scalar_t__ InstructionOffset; } ;
struct TYPE_4__ {TYPE_1__ ctx_frame; } ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int SYMOPT_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
#define  SymTagBlock 133 
#define  SymTagCustom 132 
#define  SymTagData 131 
#define  SymTagFuncDebugEnd 130 
#define  SymTagFuncDebugStart 129 
#define  SymTagLabel 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int dbghelp_options ; 
 int /*<<< orphan*/  FUNC5 (struct sym_enum const*,struct module_pair*,struct symt_function*,struct symt*) ; 
 int /*<<< orphan*/ * FUNC6 (struct symt*) ; 
 scalar_t__ FUNC7 (struct vector const*,unsigned int) ; 
 unsigned int FUNC8 (struct vector const*) ; 

__attribute__((used)) static BOOL FUNC9(struct module_pair* pair,
                                    const WCHAR* match, const struct sym_enum* se,
                                    struct symt_function* func, const struct vector* v)
{
    struct symt*        lsym = NULL;
    DWORD               pc = pair->pcs->ctx_frame.InstructionOffset;
    unsigned int        i;
    WCHAR*              nameW;
    BOOL                ret;

    for (i=0; i<FUNC8(v); i++)
    {
        lsym = *(struct symt**)FUNC7(v, i);
        switch (lsym->tag)
        {
        case SymTagBlock:
            {
                struct symt_block*  block = (struct symt_block*)lsym;
                if (pc < block->address || block->address + block->size <= pc)
                    continue;
                if (!FUNC9(pair, match, se, func, &block->vchildren))
                    return FALSE;
            }
            break;
        case SymTagData:
            nameW = FUNC6(lsym);
            ret = FUNC3(nameW, match,
                                  !(dbghelp_options & SYMOPT_CASE_INSENSITIVE));
            FUNC2(FUNC1(), 0, nameW);
            if (ret)
            {
                if (FUNC5(se, pair, func, lsym)) return FALSE;
            }
            break;
        case SymTagLabel:
        case SymTagFuncDebugStart:
        case SymTagFuncDebugEnd:
        case SymTagCustom:
            break;
        default:
            FUNC0("Unknown type: %u (%x)\n", lsym->tag, lsym->tag);
            FUNC4(0);
        }
    }
    return TRUE;
}