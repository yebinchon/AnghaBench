
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ALLOCSET_SMALL_SIZES ;
 scalar_t__ AllocSetContextCreate (int ,char*,int ) ;
 int TopMemoryContext ;
 scalar_t__ pgStatLocalContext ;

__attribute__((used)) static void
pgstat_setup_memcxt(void)
{
 if (!pgStatLocalContext)
  pgStatLocalContext = AllocSetContextCreate(TopMemoryContext,
               "Statistics snapshot",
               ALLOCSET_SMALL_SIZES);
}
