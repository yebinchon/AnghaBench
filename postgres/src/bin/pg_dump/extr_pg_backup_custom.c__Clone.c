
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * cs; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_7__ {TYPE_1__* formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int fatal (char*) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ pg_malloc (int) ;

__attribute__((used)) static void
_Clone(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 AH->formatData = (lclContext *) pg_malloc(sizeof(lclContext));
 memcpy(AH->formatData, ctx, sizeof(lclContext));
 ctx = (lclContext *) AH->formatData;


 if (ctx->cs != ((void*)0))
  fatal("compressor active");







}
