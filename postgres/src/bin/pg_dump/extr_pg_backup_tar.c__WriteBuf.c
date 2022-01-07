
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t filePos; int FH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int WRITE_ERROR_EXIT ;
 size_t tarWrite (void const*,size_t,int ) ;

__attribute__((used)) static void
_WriteBuf(ArchiveHandle *AH, const void *buf, size_t len)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (tarWrite(buf, len, ctx->FH) != len)
  WRITE_ERROR_EXIT;

 ctx->filePos += len;
}
