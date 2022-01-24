#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tag; } ;
struct symt_function {unsigned long address; unsigned long size; TYPE_1__ symt; } ;
struct startend {unsigned long start; } ;
struct p_string {int dummy; } ;
struct msc_debug_info {int /*<<< orphan*/  module; } ;
struct codeview_linetab_block {unsigned long* offsets; size_t num_lines; int /*<<< orphan*/  seg; } ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ SymTagFunction ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long,int) ; 
 unsigned long FUNC1 (struct msc_debug_info const*,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct symt_function*,unsigned int,unsigned short const,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 char const* FUNC5 (struct p_string const*) ; 

__attribute__((used)) static void FUNC6(const struct msc_debug_info* msc_dbg, const BYTE* linetab,
                                   int size, BOOL pascal_str)
{
    const BYTE*                 ptr = linetab;
    int				nfile, nseg;
    int                         i, j;
    unsigned int                k;
    const unsigned int*         filetab;
    const unsigned int*         lt_ptr;
    const unsigned short*       linenos;
    const struct startend*      start;
    unsigned                    source;
    unsigned long               addr, func_addr0;
    struct symt_function*       func;
    const struct codeview_linetab_block* ltb;

    nfile = *(const short*)linetab;
    filetab = (const unsigned int*)(linetab + 2 * sizeof(short));

    for (i = 0; i < nfile; i++)
    {
        ptr = linetab + filetab[i];
        nseg = *(const short*)ptr;
        lt_ptr = (const unsigned int*)(ptr + 2 * sizeof(short));
        start = (const struct startend*)(lt_ptr + nseg);

        /*
         * Now snarf the filename for all of the segments for this file.
         */
        if (pascal_str)
            source = FUNC2(msc_dbg->module, NULL, FUNC5((const struct p_string*)(start + nseg)));
        else
            source = FUNC2(msc_dbg->module, NULL, (const char*)(start + nseg));

        for (j = 0; j < nseg; j++)
	{
            ltb = (const struct codeview_linetab_block*)(linetab + *lt_ptr++);
            linenos = (const unsigned short*)&ltb->offsets[ltb->num_lines];
            func_addr0 = FUNC1(msc_dbg, ltb->seg, start[j].start);
            if (!func_addr0) continue;
            for (func = NULL, k = 0; k < ltb->num_lines; k++)
            {
                /* now locate function (if any) */
                addr = func_addr0 + ltb->offsets[k] - start[j].start;
                /* unfortunately, we can have several functions in the same block, if there's no
                 * gap between them... find the new function if needed
                 */
                if (!func || addr >= func->address + func->size)
                {
                    func = (struct symt_function*)FUNC4(msc_dbg->module, addr);
                    /* FIXME: at least labels support line numbers */
                    if (!func || func->symt.tag != SymTagFunction)
                    {
                        FUNC0("--not a func at %04x:%08x %lx tag=%d\n",
                             ltb->seg, ltb->offsets[k], addr, func ? func->symt.tag : -1);
                        func = NULL;
                        break;
                    }
                }
                FUNC3(msc_dbg->module, func, source,
                                   linenos[k], addr - func->address);
            }
	}
    }
}