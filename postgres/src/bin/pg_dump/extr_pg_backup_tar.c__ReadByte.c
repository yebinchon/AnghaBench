
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int filePos; int FH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 int fatal (char*) ;
 size_t tarRead (unsigned char*,int,int ) ;

__attribute__((used)) static int
_ReadByte(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 size_t res;
 unsigned char c;

 res = tarRead(&c, 1, ctx->FH);
 if (res != 1)

  fatal("could not read from input file: end of file");
 ctx->filePos += 1;
 return c;
}
