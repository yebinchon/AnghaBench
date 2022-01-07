
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * cs; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_6__ {scalar_t__ formatData; } ;
typedef int CompressorState ;
typedef TYPE_2__ ArchiveHandle ;


 int WriteDataToArchive (TYPE_2__*,int *,void const*,size_t) ;

__attribute__((used)) static void
_WriteData(ArchiveHandle *AH, const void *data, size_t dLen)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 CompressorState *cs = ctx->cs;

 if (dLen > 0)

  WriteDataToArchive(AH, cs, data, dLen);

 return;
}
