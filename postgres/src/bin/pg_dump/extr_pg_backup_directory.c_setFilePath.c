
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* directory; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_5__ {scalar_t__ formatData; } ;
typedef TYPE_2__ ArchiveHandle ;


 scalar_t__ MAXPGPATH ;
 int fatal (char*,char*) ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
setFilePath(ArchiveHandle *AH, char *buf, const char *relativeFilename)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 char *dname;

 dname = ctx->directory;

 if (strlen(dname) + 1 + strlen(relativeFilename) + 1 > MAXPGPATH)
  fatal("file name too long: \"%s\"", dname);

 strcpy(buf, dname);
 strcat(buf, "/");
 strcat(buf, relativeFilename);
}
