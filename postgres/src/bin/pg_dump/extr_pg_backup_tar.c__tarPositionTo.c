
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ tarFHpos; scalar_t__ tarNextMember; int tarFH; } ;
typedef TYPE_1__ lclContext ;
typedef int int64 ;
typedef int buf2 ;
typedef int buf1 ;
typedef int buf ;
struct TYPE_14__ {scalar_t__ formatData; } ;
struct TYPE_13__ {char* targetFile; int fileLen; scalar_t__ pos; TYPE_3__* AH; } ;
typedef TYPE_2__ TAR_MEMBER ;
typedef TYPE_3__ ArchiveHandle ;


 char* INT64_FORMAT ;
 int REQ_DATA ;
 int TocIDRequired (TYPE_3__*,int) ;
 int _tarGetHeader (TYPE_3__*,TYPE_2__*) ;
 int _tarReadRaw (TYPE_3__*,char*,int,int *,int ) ;
 int atoi (char*) ;
 int fatal (char*,char const*,...) ;
 int free (TYPE_2__*) ;
 int pg_log_debug (char*,char*,...) ;
 TYPE_2__* pg_malloc0 (int) ;
 int snprintf (char*,int,char*,int ) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static TAR_MEMBER *
_tarPositionTo(ArchiveHandle *AH, const char *filename)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 TAR_MEMBER *th = pg_malloc0(sizeof(TAR_MEMBER));
 char c;
 char header[512];
 size_t i,
    len,
    blks;
 int id;

 th->AH = AH;


 if (ctx->tarFHpos != 0)
 {
  char buf1[100],
     buf2[100];

  snprintf(buf1, sizeof(buf1), INT64_FORMAT, (int64) ctx->tarFHpos);
  snprintf(buf2, sizeof(buf2), INT64_FORMAT, (int64) ctx->tarNextMember);
  pg_log_debug("moving from position %s to next member at file position %s",
      buf1, buf2);

  while (ctx->tarFHpos < ctx->tarNextMember)
   _tarReadRaw(AH, &c, 1, ((void*)0), ctx->tarFH);
 }

 {
  char buf[100];

  snprintf(buf, sizeof(buf), INT64_FORMAT, (int64) ctx->tarFHpos);
  pg_log_debug("now at file position %s", buf);
 }




 if (!_tarGetHeader(AH, th))
 {
  if (filename)
   fatal("could not find header for file \"%s\" in tar archive", filename);
  else
  {




   free(th);
   return ((void*)0);
  }
 }

 while (filename != ((void*)0) && strcmp(th->targetFile, filename) != 0)
 {
  pg_log_debug("skipping tar member %s", th->targetFile);

  id = atoi(th->targetFile);
  if ((TocIDRequired(AH, id) & REQ_DATA) != 0)
   fatal("restoring data out of order is not supported in this archive format: "
      "\"%s\" is required, but comes before \"%s\" in the archive file.",
      th->targetFile, filename);


  len = ((th->fileLen + 511) & ~511);
  blks = len >> 9;

  for (i = 0; i < blks; i++)
   _tarReadRaw(AH, &header[0], 512, ((void*)0), ctx->tarFH);

  if (!_tarGetHeader(AH, th))
   fatal("could not find header for file \"%s\" in tar archive", filename);
 }

 ctx->tarNextMember = ctx->tarFHpos + ((th->fileLen + 511) & ~511);
 th->pos = 0;

 return th;
}
