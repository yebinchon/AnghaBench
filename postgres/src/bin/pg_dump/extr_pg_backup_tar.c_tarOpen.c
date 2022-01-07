
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * tarFH; } ;
typedef TYPE_1__ lclContext ;
struct TYPE_11__ {int compression; scalar_t__ formatData; } ;
struct TYPE_10__ {char mode; int * tarFH; int targetFile; TYPE_3__* AH; int * tmpFH; int * nFH; int * zFH; } ;
typedef TYPE_2__ TAR_MEMBER ;
typedef TYPE_3__ ArchiveHandle ;


 scalar_t__ EEXIST ;
 int O_BINARY ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int O_TEMPORARY ;
 int S_IRUSR ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IWUSR ;
 TYPE_2__* _tarPositionTo (TYPE_3__*,char const*) ;
 char* _tempnam (int *,char*) ;
 int dup (int ) ;
 scalar_t__ errno ;
 int fatal (char*,...) ;
 int * fdopen (int,char*) ;
 int fileno (int *) ;
 int free (char*) ;
 int * gzdopen (int ,char*) ;
 int open (char*,int,int) ;
 TYPE_2__* pg_malloc0 (int) ;
 int pg_strdup (char const*) ;
 int sprintf (char*,char*,int) ;
 int * tmpfile () ;
 int umask (int) ;

__attribute__((used)) static TAR_MEMBER *
tarOpen(ArchiveHandle *AH, const char *filename, char mode)
{
 lclContext *ctx = (lclContext *) AH->formatData;
 TAR_MEMBER *tm;





 if (mode == 'r')
 {
  tm = _tarPositionTo(AH, filename);
  if (!tm)
  {
   if (filename)
   {




    fatal("could not find file \"%s\" in archive", filename);
   }
   else
   {

    return ((void*)0);
   }
  }
  tm->nFH = ctx->tarFH;

 }
 else
 {
  int old_umask;

  tm = pg_malloc0(sizeof(TAR_MEMBER));







  old_umask = umask(S_IRWXG | S_IRWXO);


  tm->tmpFH = tmpfile();
  if (tm->tmpFH == ((void*)0))
   fatal("could not generate temporary file name: %m");

  umask(old_umask);
  tm->nFH = tm->tmpFH;


  tm->AH = AH;
  tm->targetFile = pg_strdup(filename);
 }

 tm->mode = mode;
 tm->tarFH = ctx->tarFH;

 return tm;
}
