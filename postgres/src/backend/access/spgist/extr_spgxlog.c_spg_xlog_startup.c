
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int opCtx ;

void
spg_xlog_startup(void)
{
 opCtx = AllocSetContextCreate(CurrentMemoryContext,
          "SP-GiST temporary context",
          ALLOCSET_DEFAULT_SIZES);
}
