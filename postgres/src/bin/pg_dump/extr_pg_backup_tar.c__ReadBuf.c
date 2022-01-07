
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


 int fatal (char*) ;
 size_t tarRead (void*,size_t,int ) ;

__attribute__((used)) static void
_ReadBuf(ArchiveHandle *AH, void *buf, size_t len)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 if (tarRead(buf, len, ctx->FH) != len)

  fatal("could not read from input file: end of file");

 ctx->filePos += len;
 return;
}
