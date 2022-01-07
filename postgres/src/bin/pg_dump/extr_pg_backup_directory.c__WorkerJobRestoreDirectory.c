
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TocEntry ;
typedef int ArchiveHandle ;


 int parallel_restore (int *,int *) ;

__attribute__((used)) static int
_WorkerJobRestoreDirectory(ArchiveHandle *AH, TocEntry *te)
{
 return parallel_restore(AH, te);
}
