
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MemoryContext ;


 int ALLOCSET_DEFAULT_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;

MemoryContext
createTempGistContext(void)
{
 return AllocSetContextCreate(CurrentMemoryContext,
         "GiST temporary context",
         ALLOCSET_DEFAULT_SIZES);
}
