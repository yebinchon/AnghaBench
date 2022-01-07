
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int teReqs ;
struct TYPE_3__ {int reqs; } ;
typedef TYPE_1__ TocEntry ;
typedef int DumpId ;
typedef int ArchiveHandle ;


 TYPE_1__* getTocEntryByDumpId (int *,int ) ;

teReqs
TocIDRequired(ArchiveHandle *AH, DumpId id)
{
 TocEntry *te = getTocEntryByDumpId(AH, id);

 if (!te)
  return 0;

 return te->reqs;
}
