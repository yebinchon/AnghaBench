
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t dumpId; int created; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_6__ {size_t* tableDataId; TYPE_1__** tocsByDumpId; } ;
typedef TYPE_2__ ArchiveHandle ;



__attribute__((used)) static void
mark_create_done(ArchiveHandle *AH, TocEntry *te)
{
 if (AH->tableDataId[te->dumpId] != 0)
 {
  TocEntry *ted = AH->tocsByDumpId[AH->tableDataId[te->dumpId]];

  ted->created = 1;
 }
}
