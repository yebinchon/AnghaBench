
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int MdCxt ;
 int TopMemoryContext ;

void
mdinit(void)
{
 MdCxt = AllocSetContextCreate(TopMemoryContext,
          "MdSmgr",
          ALLOCSET_DEFAULT_SIZES);
}
