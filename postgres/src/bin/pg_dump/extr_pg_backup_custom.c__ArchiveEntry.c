
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dataState; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_5__ {void* formatData; scalar_t__ dataDumper; } ;
typedef TYPE_2__ TocEntry ;
typedef int ArchiveHandle ;


 int K_OFFSET_NO_DATA ;
 int K_OFFSET_POS_NOT_SET ;
 scalar_t__ pg_malloc0 (int) ;

__attribute__((used)) static void
_ArchiveEntry(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *ctx;

 ctx = (lclTocEntry *) pg_malloc0(sizeof(lclTocEntry));
 if (te->dataDumper)
  ctx->dataState = K_OFFSET_POS_NOT_SET;
 else
  ctx->dataState = K_OFFSET_NO_DATA;

 te->formatData = (void *) ctx;
}
