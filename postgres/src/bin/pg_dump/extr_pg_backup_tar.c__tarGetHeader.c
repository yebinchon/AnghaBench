
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64 ;
typedef int posbuf ;
typedef int pgoff_t ;
typedef int lenbuf ;
struct TYPE_7__ {int tarFHpos; int tarFH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_9__ {scalar_t__ formatData; } ;
struct TYPE_8__ {int fileLen; int targetFile; } ;
typedef TYPE_2__ TAR_MEMBER ;
typedef TYPE_3__ ArchiveHandle ;


 char* UINT64_FORMAT ;
 int _tarReadRaw (TYPE_3__*,char*,int,int *,int ) ;
 int fatal (char*,...) ;
 scalar_t__ ftello (int ) ;
 int ngettext (char*,char*,int) ;
 int pg_log_debug (char*,char*,char*,char*,int) ;
 int pg_strdup (char*) ;
 int read_tar_number (char*,int) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (char*,char*,int) ;
 int tarChecksum (char*) ;

__attribute__((used)) static int
_tarGetHeader(ArchiveHandle *AH, TAR_MEMBER *th)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char h[512];
 char tag[100 + 1];
 int sum,
    chk;
 pgoff_t len;
 pgoff_t hPos;
 bool gotBlock = 0;

 while (!gotBlock)
 {

  hPos = ctx->tarFHpos;


  len = _tarReadRaw(AH, h, 512, ((void*)0), ctx->tarFH);
  if (len == 0)
   return 0;

  if (len != 512)
   fatal(ngettext("incomplete tar header found (%lu byte)",
         "incomplete tar header found (%lu bytes)",
         len),
      (unsigned long) len);


  chk = tarChecksum(h);
  sum = read_tar_number(&h[148], 8);





  if (chk == sum)
   gotBlock = 1;
  else
  {
   int i;

   for (i = 0; i < 512; i++)
   {
    if (h[i] != 0)
    {
     gotBlock = 1;
     break;
    }
   }
  }
 }


 strlcpy(tag, &h[0], 100 + 1);

 len = read_tar_number(&h[124], 12);

 {
  char posbuf[32];
  char lenbuf[32];

  snprintf(posbuf, sizeof(posbuf), UINT64_FORMAT, (uint64) hPos);
  snprintf(lenbuf, sizeof(lenbuf), UINT64_FORMAT, (uint64) len);
  pg_log_debug("TOC Entry %s at %s (length %s, checksum %d)",
      tag, posbuf, lenbuf, sum);
 }

 if (chk != sum)
 {
  char posbuf[32];

  snprintf(posbuf, sizeof(posbuf), UINT64_FORMAT,
     (uint64) ftello(ctx->tarFH));
  fatal("corrupt tar header found in %s (expected %d, computed %d) file position %s",
     tag, sum, chk, posbuf);
 }

 th->targetFile = pg_strdup(tag);
 th->fileLen = len;

 return 1;
}
