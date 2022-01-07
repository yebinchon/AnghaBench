
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t dumpId; scalar_t__ reqs; int tag; } ;
typedef TYPE_1__ TocEntry ;
struct TYPE_6__ {size_t* tableDataId; TYPE_1__** tocsByDumpId; } ;
typedef TYPE_2__ ArchiveHandle ;


 int pg_log_info (char*,int ) ;

__attribute__((used)) static void
inhibit_data_for_failed_table(ArchiveHandle *AH, TocEntry *te)
{
 pg_log_info("table \"%s\" could not be created, will not restore its data",
    te->tag);

 if (AH->tableDataId[te->dumpId] != 0)
 {
  TocEntry *ted = AH->tocsByDumpId[AH->tableDataId[te->dumpId]];

  ted->reqs = 0;
 }
}
