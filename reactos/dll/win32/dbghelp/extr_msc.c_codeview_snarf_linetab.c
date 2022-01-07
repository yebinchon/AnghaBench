
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tag; } ;
struct symt_function {unsigned long address; unsigned long size; TYPE_1__ symt; } ;
struct startend {unsigned long start; } ;
struct p_string {int dummy; } ;
struct msc_debug_info {int module; } ;
struct codeview_linetab_block {unsigned long* offsets; size_t num_lines; int seg; } ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 scalar_t__ SymTagFunction ;
 int WARN (char*,int ,unsigned long,unsigned long,int) ;
 unsigned long codeview_get_address (struct msc_debug_info const*,int ,unsigned long) ;
 unsigned int source_new (int ,int *,char const*) ;
 int symt_add_func_line (int ,struct symt_function*,unsigned int,unsigned short const,unsigned long) ;
 scalar_t__ symt_find_nearest (int ,unsigned long) ;
 char const* terminate_string (struct p_string const*) ;

__attribute__((used)) static void codeview_snarf_linetab(const struct msc_debug_info* msc_dbg, const BYTE* linetab,
                                   int size, BOOL pascal_str)
{
    const BYTE* ptr = linetab;
    int nfile, nseg;
    int i, j;
    unsigned int k;
    const unsigned int* filetab;
    const unsigned int* lt_ptr;
    const unsigned short* linenos;
    const struct startend* start;
    unsigned source;
    unsigned long addr, func_addr0;
    struct symt_function* func;
    const struct codeview_linetab_block* ltb;

    nfile = *(const short*)linetab;
    filetab = (const unsigned int*)(linetab + 2 * sizeof(short));

    for (i = 0; i < nfile; i++)
    {
        ptr = linetab + filetab[i];
        nseg = *(const short*)ptr;
        lt_ptr = (const unsigned int*)(ptr + 2 * sizeof(short));
        start = (const struct startend*)(lt_ptr + nseg);




        if (pascal_str)
            source = source_new(msc_dbg->module, ((void*)0), terminate_string((const struct p_string*)(start + nseg)));
        else
            source = source_new(msc_dbg->module, ((void*)0), (const char*)(start + nseg));

        for (j = 0; j < nseg; j++)
 {
            ltb = (const struct codeview_linetab_block*)(linetab + *lt_ptr++);
            linenos = (const unsigned short*)&ltb->offsets[ltb->num_lines];
            func_addr0 = codeview_get_address(msc_dbg, ltb->seg, start[j].start);
            if (!func_addr0) continue;
            for (func = ((void*)0), k = 0; k < ltb->num_lines; k++)
            {

                addr = func_addr0 + ltb->offsets[k] - start[j].start;



                if (!func || addr >= func->address + func->size)
                {
                    func = (struct symt_function*)symt_find_nearest(msc_dbg->module, addr);

                    if (!func || func->symt.tag != SymTagFunction)
                    {
                        WARN("--not a func at %04x:%08x %lx tag=%d\n",
                             ltb->seg, ltb->offsets[k], addr, func ? func->symt.tag : -1);
                        func = ((void*)0);
                        break;
                    }
                }
                symt_add_func_line(msc_dbg->module, func, source,
                                   linenos[k], addr - func->address);
            }
 }
    }
}
