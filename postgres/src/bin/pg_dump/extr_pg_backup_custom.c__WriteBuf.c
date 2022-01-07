
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


 int WRITE_ERROR_EXIT ;
 size_t fwrite (void const*,int,size_t,int ) ;

__attribute__((used)) static void
_WriteBuf(ArchiveHandle *AH, const void *buf, size_t len)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (fwrite(buf, 1, len, AH->FH) != len)
  WRITE_ERROR_EXIT;
 ctx->filePos += len;

 return;
}
