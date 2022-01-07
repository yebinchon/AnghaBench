
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int TocEntry ;
struct TYPE_4__ {size_t maxDumpId; int ** tocsByDumpId; } ;
typedef size_t DumpId ;
typedef TYPE_1__ ArchiveHandle ;


 int buildTocEntryArrays (TYPE_1__*) ;

TocEntry *
getTocEntryByDumpId(ArchiveHandle *AH, DumpId id)
{

 if (AH->tocsByDumpId == ((void*)0))
  buildTocEntryArrays(AH);

 if (id > 0 && id <= AH->maxDumpId)
  return AH->tocsByDumpId[id];

 return ((void*)0);
}
