
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int * AnonymousShmem ;
 int AnonymousShmemSize ;
 int LOG ;
 int elog (int ,char*,int *,int ) ;
 scalar_t__ munmap (int *,int ) ;

__attribute__((used)) static void
AnonymousShmemDetach(int status, Datum arg)
{

 if (AnonymousShmem != ((void*)0))
 {
  if (munmap(AnonymousShmem, AnonymousShmemSize) < 0)
   elog(LOG, "munmap(%p, %zu) failed: %m",
     AnonymousShmem, AnonymousShmemSize);
  AnonymousShmem = ((void*)0);
 }
}
