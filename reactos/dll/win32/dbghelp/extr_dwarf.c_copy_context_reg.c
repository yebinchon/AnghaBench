
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_2__ {unsigned int (* map_dwarf_register ) (int ,int ) ;int * (* fetch_context_reg ) (int *,unsigned int,unsigned int*) ;} ;
typedef int CONTEXT ;


 int FIXME (char*,int ,unsigned int,int ,unsigned int,unsigned int,unsigned int) ;
 int TRUE ;
 TYPE_1__* dbghelp_current_cpu ;
 int memcpy (int *,int *,unsigned int) ;
 unsigned int stub1 (int ,int ) ;
 unsigned int stub2 (int ,int ) ;
 int * stub3 (int *,unsigned int,unsigned int*) ;
 int * stub4 (int *,unsigned int,unsigned int*) ;

__attribute__((used)) static void copy_context_reg(CONTEXT *dstcontext, ULONG_PTR dwregdst, CONTEXT* srccontext, ULONG_PTR dwregsrc)
{
    unsigned regdstno = dbghelp_current_cpu->map_dwarf_register(dwregdst, TRUE), szdst;
    unsigned regsrcno = dbghelp_current_cpu->map_dwarf_register(dwregsrc, TRUE), szsrc;
    ULONG_PTR* ptrdst = dbghelp_current_cpu->fetch_context_reg(dstcontext, regdstno, &szdst);
    ULONG_PTR* ptrsrc = dbghelp_current_cpu->fetch_context_reg(srccontext, regsrcno, &szsrc);

    if (szdst != szsrc)
    {
        FIXME("Cannot copy register %lu/%u => %lu/%u because of size mismatch (%u => %u)\n",
              dwregsrc, regsrcno, dwregdst, regdstno, szsrc, szdst);
        return;
    }
    memcpy(ptrdst, ptrsrc, szdst);
}
