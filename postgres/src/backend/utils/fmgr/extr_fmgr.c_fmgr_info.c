
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int FmgrInfo ;


 int CurrentMemoryContext ;
 int fmgr_info_cxt_security (int ,int *,int ,int) ;

void
fmgr_info(Oid functionId, FmgrInfo *finfo)
{
 fmgr_info_cxt_security(functionId, finfo, CurrentMemoryContext, 0);
}
