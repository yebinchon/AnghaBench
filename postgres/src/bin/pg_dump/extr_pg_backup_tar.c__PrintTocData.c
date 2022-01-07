
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int filename; } ;
typedef TYPE_1__ lclTocEntry ;
struct TYPE_12__ {scalar_t__ isSpecialScript; } ;
typedef TYPE_2__ lclContext ;
struct TYPE_13__ {scalar_t__ desc; scalar_t__ copyStmt; scalar_t__ formatData; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_14__ {scalar_t__ formatData; } ;
typedef TYPE_4__ ArchiveHandle ;


 int _LoadBlobs (TYPE_4__*) ;
 int _PrintFileData (TYPE_4__*,int ) ;
 int ahprintf (TYPE_4__*,char*,...) ;
 int ahwrite (scalar_t__,int,int,TYPE_4__*) ;
 int fatal (char*,scalar_t__) ;
 scalar_t__ strcmp (scalar_t__,char*) ;
 scalar_t__ strlen (scalar_t__) ;
 scalar_t__ strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static void
_PrintTocData(ArchiveHandle *AH, TocEntry *te)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 lclTocEntry *tctx = (lclTocEntry *) te->formatData;
 int pos1;

 if (!tctx->filename)
  return;
 if (ctx->isSpecialScript)
 {
  if (te->copyStmt)
  {

   ahprintf(AH, "\\.\n");





   pos1 = (int) strlen(te->copyStmt) - 13;
   if (pos1 < 6 || strncmp(te->copyStmt, "COPY ", 5) != 0 ||
    strcmp(te->copyStmt + pos1, " FROM stdin;\n") != 0)
    fatal("unexpected COPY statement syntax: \"%s\"",
       te->copyStmt);


   ahwrite(te->copyStmt, 1, pos1, AH);

   ahprintf(AH, " FROM '$$PATH$$/%s';\n\n", tctx->filename);
  }
  else
  {

   ahprintf(AH, "\\i $$PATH$$/%s\n\n", tctx->filename);
  }

  return;
 }

 if (strcmp(te->desc, "BLOBS") == 0)
  _LoadBlobs(AH);
 else
  _PrintFileData(AH, tctx->filename);
}
