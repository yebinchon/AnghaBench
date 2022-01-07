
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {char* directory; int * blobsTocFH; } ;
typedef TYPE_3__ lclContext ;
struct TYPE_13__ {TYPE_1__* ropt; } ;
struct TYPE_15__ {TYPE_2__ public; scalar_t__ formatData; } ;
struct TYPE_12__ {int dropSchema; } ;
typedef int Oid ;
typedef TYPE_4__ ArchiveHandle ;


 int EndRestoreBlob (TYPE_4__*,int ) ;
 int EndRestoreBlobs (TYPE_4__*) ;
 int MAXPGPATH ;
 int PG_BINARY_R ;
 int StartRestoreBlob (TYPE_4__*,int ,int ) ;
 int StartRestoreBlobs (TYPE_4__*) ;
 int _PrintFileData (TYPE_4__*,char*) ;
 scalar_t__ cfclose (int *) ;
 int cfeof (int *) ;
 int * cfgets (int *,char*,int) ;
 int * cfopen_read (char*,int ) ;
 int fatal (char*,char*,...) ;
 int setFilePath (TYPE_4__*,char*,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int sscanf (char*,char*,int *,char*) ;

__attribute__((used)) static void
_LoadBlobs(ArchiveHandle *AH)
{
 Oid oid;
 lclContext *ctx = (lclContext *) AH->formatData;
 char fname[MAXPGPATH];
 char line[MAXPGPATH];

 StartRestoreBlobs(AH);

 setFilePath(AH, fname, "blobs.toc");

 ctx->blobsTocFH = cfopen_read(fname, PG_BINARY_R);

 if (ctx->blobsTocFH == ((void*)0))
  fatal("could not open large object TOC file \"%s\" for input: %m",
     fname);


 while ((cfgets(ctx->blobsTocFH, line, MAXPGPATH)) != ((void*)0))
 {
  char fname[MAXPGPATH];
  char path[MAXPGPATH];


  if (sscanf(line, "%u %s\n", &oid, fname) != 2)
   fatal("invalid line in large object TOC file \"%s\": \"%s\"",
      fname, line);

  StartRestoreBlob(AH, oid, AH->public.ropt->dropSchema);
  snprintf(path, MAXPGPATH, "%s/%s", ctx->directory, fname);
  _PrintFileData(AH, path);
  EndRestoreBlob(AH, oid);
 }
 if (!cfeof(ctx->blobsTocFH))
  fatal("error reading large object TOC file \"%s\"",
     fname);

 if (cfclose(ctx->blobsTocFH) != 0)
  fatal("could not close large object TOC file \"%s\": %m",
     fname);

 ctx->blobsTocFH = ((void*)0);

 EndRestoreBlobs(AH);
}
