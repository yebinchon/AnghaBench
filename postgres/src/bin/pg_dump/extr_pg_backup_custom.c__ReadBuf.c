
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t filePos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {int FH; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int READ_ERROR_EXIT (int ) ;
 size_t fread (void*,int,size_t,int ) ;

__attribute__((used)) static void
_ReadBuf(ArchiveHandle *AH, void *buf, size_t len)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (fread(buf, 1, len, AH->FH) != len)
  READ_ERROR_EXIT(AH->FH);
 ctx->filePos += len;

 return;
}
