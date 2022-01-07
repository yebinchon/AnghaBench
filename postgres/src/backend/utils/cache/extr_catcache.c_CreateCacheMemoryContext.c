
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOCSET_DEFAULT_SIZES ;
 scalar_t__ AllocSetContextCreate (int ,char*,int ) ;
 scalar_t__ CacheMemoryContext ;
 int TopMemoryContext ;

void
CreateCacheMemoryContext(void)
{




 if (!CacheMemoryContext)
  CacheMemoryContext = AllocSetContextCreate(TopMemoryContext,
               "CacheMemoryContext",
               ALLOCSET_DEFAULT_SIZES);
}
