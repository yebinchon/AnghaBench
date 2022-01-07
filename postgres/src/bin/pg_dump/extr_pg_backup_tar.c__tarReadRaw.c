
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t tarFHpos; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_8__ {size_t lookaheadLen; size_t lookaheadPos; size_t lookahead; scalar_t__ formatData; } ;
struct TYPE_7__ {int * nFH; int zFH; } ;
typedef TYPE_2__ TAR_MEMBER ;
typedef int FILE ;
typedef TYPE_3__ ArchiveHandle ;


 int GZEOF (int ) ;
 size_t GZREAD (char*,int,size_t,int ) ;
 int READ_ERROR_EXIT (int *) ;
 int Z_ERRNO ;
 int errno ;
 int fatal (char*,...) ;
 int feof (int *) ;
 size_t fread (char*,int,size_t,int *) ;
 char* gzerror (int ,int*) ;
 int memcpy (void*,size_t,size_t) ;
 char const* strerror (int ) ;

__attribute__((used)) static size_t
_tarReadRaw(ArchiveHandle *AH, void *buf, size_t len, TAR_MEMBER *th, FILE *fh)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 size_t avail;
 size_t used = 0;
 size_t res = 0;

 avail = AH->lookaheadLen - AH->lookaheadPos;
 if (avail > 0)
 {

  if (avail >= len)
   used = len;
  else
   used = avail;


  memcpy(buf, AH->lookahead + AH->lookaheadPos, used);
  AH->lookaheadPos += used;


  len -= used;
 }


 if (len > 0)
 {
  if (fh)
  {
   res = fread(&((char *) buf)[used], 1, len, fh);
   if (res != len && !feof(fh))
    READ_ERROR_EXIT(fh);
  }
  else if (th)
  {
   if (th->zFH)
   {
    res = GZREAD(&((char *) buf)[used], 1, len, th->zFH);
    if (res != len && !GZEOF(th->zFH))
    {







     fatal("could not read from input file: %s",
        strerror(errno));

    }
   }
   else
   {
    res = fread(&((char *) buf)[used], 1, len, th->nFH);
    if (res != len && !feof(th->nFH))
     READ_ERROR_EXIT(th->nFH);
   }
  }
  else
   fatal("internal error -- neither th nor fh specified in _tarReadRaw()");
 }

 ctx->tarFHpos += res + used;

 return (res + used);
}
