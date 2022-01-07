
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int MemoryContext ;
typedef int FmgrInfo ;


 int fmgr_info_cxt_security (int ,int *,int ,int) ;

void
fmgr_info_cxt(Oid functionId, FmgrInfo *finfo, MemoryContext mcxt)
{
 fmgr_info_cxt_security(functionId, finfo, mcxt, 0);
}
