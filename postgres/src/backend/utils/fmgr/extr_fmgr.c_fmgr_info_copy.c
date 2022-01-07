
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * fn_extra; int fn_mcxt; } ;
typedef int MemoryContext ;
typedef TYPE_1__ FmgrInfo ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

void
fmgr_info_copy(FmgrInfo *dstinfo, FmgrInfo *srcinfo,
      MemoryContext destcxt)
{
 memcpy(dstinfo, srcinfo, sizeof(FmgrInfo));
 dstinfo->fn_mcxt = destcxt;
 dstinfo->fn_extra = ((void*)0);
}
