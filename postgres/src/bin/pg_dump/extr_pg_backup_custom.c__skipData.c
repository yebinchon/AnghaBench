
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t filePos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_6__ {int FH; scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 size_t ReadInt (TYPE_2__*) ;
 int fatal (char*) ;
 scalar_t__ feof (int ) ;
 size_t fread (char*,int,size_t,int ) ;
 int free (char*) ;
 scalar_t__ pg_malloc (size_t) ;

__attribute__((used)) static void
_skipData(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 size_t blkLen;
 char *buf = ((void*)0);
 int buflen = 0;
 size_t cnt;

 blkLen = ReadInt(AH);
 while (blkLen != 0)
 {
  if (blkLen > buflen)
  {
   if (buf)
    free(buf);
   buf = (char *) pg_malloc(blkLen);
   buflen = blkLen;
  }
  if ((cnt = fread(buf, 1, blkLen, AH->FH)) != blkLen)
  {
   if (feof(AH->FH))
    fatal("could not read from input file: end of file");
   else
    fatal("could not read from input file: %m");
  }

  ctx->filePos += blkLen;

  blkLen = ReadInt(AH);
 }

 if (buf)
  free(buf);
}
