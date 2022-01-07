
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int) ;
 scalar_t__ DatabasePath ;
 scalar_t__ MemoryContextStrdup (int ,char const*) ;
 int TopMemoryContext ;

void
SetDatabasePath(const char *path)
{

 Assert(!DatabasePath);
 DatabasePath = MemoryContextStrdup(TopMemoryContext, path);
}
