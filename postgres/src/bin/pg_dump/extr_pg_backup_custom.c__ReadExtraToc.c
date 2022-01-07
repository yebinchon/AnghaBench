
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dataPos; int dataState; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_9__ {void* formatData; } ;
typedef TYPE_2__ TocEntry ;
struct TYPE_10__ {scalar_t__ version; } ;
typedef TYPE_3__ ArchiveHandle ;


 scalar_t__ K_VERS_1_7 ;
 int ReadInt (TYPE_3__*) ;
 int ReadOffset (TYPE_3__*,int *) ;
 scalar_t__ pg_malloc0 (int) ;

__attribute__((used)) static void
_ReadExtraToc(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *ctx = (lclTocEntry *) te->formatData;

 if (ctx == ((void*)0))
 {
  ctx = (lclTocEntry *) pg_malloc0(sizeof(lclTocEntry));
  te->formatData = (void *) ctx;
 }

 ctx->dataState = ReadOffset(AH, &(ctx->dataPos));





 if (AH->version < K_VERS_1_7)
  ReadInt(AH);
}
