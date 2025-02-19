
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_3__ {char* lookahead; int lookaheadSize; int lookaheadLen; char* fSpec; int format; int intSize; int offSize; int readHeader; int version; scalar_t__ lookaheadPos; } ;
typedef int FILE ;
typedef TYPE_1__ ArchiveHandle ;


 int EOF ;
 int K_VERS_1_7 ;
 int MAKE_ARCHIVE_VERSION (char,char,char) ;
 int MAXPGPATH ;
 int PG_BINARY_R ;
 int READ_ERROR_EXIT (int *) ;
 int SEEK_SET ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 char* TEXT_DUMPALL_HEADER ;
 char* TEXT_DUMP_HEADER ;
 void* archDirectory ;
 int archTar ;
 int fatal (char*,...) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ feof (int *) ;
 scalar_t__ ferror (int *) ;
 int fgetc (int *) ;
 int * fopen (char*,int ) ;
 size_t fread (char*,int,int,int *) ;
 int free (char*) ;
 scalar_t__ fseeko (int *,int ,int ) ;
 int isValidTarHeader (char*) ;
 int memcpy (char*,char*,int) ;
 int pg_log_debug (char*) ;
 char* pg_malloc0 (int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int * stdin ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int
_discoverArchiveFormat(ArchiveHandle *AH)
{
 FILE *fh;
 char sig[6];
 size_t cnt;
 int wantClose = 0;

 pg_log_debug("attempting to ascertain archive format");

 if (AH->lookahead)
  free(AH->lookahead);

 AH->lookaheadSize = 512;
 AH->lookahead = pg_malloc0(512);
 AH->lookaheadLen = 0;
 AH->lookaheadPos = 0;

 if (AH->fSpec)
 {
  struct stat st;

  wantClose = 1;





  if (stat(AH->fSpec, &st) == 0 && S_ISDIR(st.st_mode))
  {
   char buf[MAXPGPATH];

   if (snprintf(buf, MAXPGPATH, "%s/toc.dat", AH->fSpec) >= MAXPGPATH)
    fatal("directory name too long: \"%s\"",
       AH->fSpec);
   if (stat(buf, &st) == 0 && S_ISREG(st.st_mode))
   {
    AH->format = archDirectory;
    return AH->format;
   }
   fatal("directory \"%s\" does not appear to be a valid archive (\"toc.dat\" does not exist)",
      AH->fSpec);
   fh = ((void*)0);
  }
  else
  {
   fh = fopen(AH->fSpec, PG_BINARY_R);
   if (!fh)
    fatal("could not open input file \"%s\": %m", AH->fSpec);
  }
 }
 else
 {
  fh = stdin;
  if (!fh)
   fatal("could not open input file: %m");
 }

 if ((cnt = fread(sig, 1, 5, fh)) != 5)
 {
  if (ferror(fh))
   fatal("could not read input file: %m");
  else
   fatal("input file is too short (read %lu, expected 5)",
      (unsigned long) cnt);
 }


 memcpy(&AH->lookahead[0], sig, 5);
 AH->lookaheadLen = 5;

 if (strncmp(sig, "PGDMP", 5) == 0)
 {
  int byteread;
  char vmaj,
     vmin,
     vrev;






  if ((byteread = fgetc(fh)) == EOF)
   READ_ERROR_EXIT(fh);

  vmaj = byteread;

  if ((byteread = fgetc(fh)) == EOF)
   READ_ERROR_EXIT(fh);

  vmin = byteread;


  AH->lookahead[AH->lookaheadLen++] = vmaj;
  AH->lookahead[AH->lookaheadLen++] = vmin;


  if (vmaj > 1 || (vmaj == 1 && vmin > 0))
  {
   if ((byteread = fgetc(fh)) == EOF)
    READ_ERROR_EXIT(fh);

   vrev = byteread;
   AH->lookahead[AH->lookaheadLen++] = vrev;
  }
  else
   vrev = 0;

  AH->version = MAKE_ARCHIVE_VERSION(vmaj, vmin, vrev);

  if ((AH->intSize = fgetc(fh)) == EOF)
   READ_ERROR_EXIT(fh);
  AH->lookahead[AH->lookaheadLen++] = AH->intSize;

  if (AH->version >= K_VERS_1_7)
  {
   if ((AH->offSize = fgetc(fh)) == EOF)
    READ_ERROR_EXIT(fh);
   AH->lookahead[AH->lookaheadLen++] = AH->offSize;
  }
  else
   AH->offSize = AH->intSize;

  if ((byteread = fgetc(fh)) == EOF)
   READ_ERROR_EXIT(fh);

  AH->format = byteread;
  AH->lookahead[AH->lookaheadLen++] = AH->format;
 }
 else
 {




  cnt = fread(&AH->lookahead[AH->lookaheadLen], 1, 512 - AH->lookaheadLen, fh);

  AH->lookaheadLen += cnt;

  if (AH->lookaheadLen >= strlen(TEXT_DUMPALL_HEADER) &&
   (strncmp(AH->lookahead, TEXT_DUMP_HEADER, strlen(TEXT_DUMP_HEADER)) == 0 ||
    strncmp(AH->lookahead, TEXT_DUMPALL_HEADER, strlen(TEXT_DUMPALL_HEADER)) == 0))
  {




   fatal("input file appears to be a text format dump. Please use psql.");
  }

  if (AH->lookaheadLen != 512)
  {
   if (feof(fh))
    fatal("input file does not appear to be a valid archive (too short?)");
   else
    READ_ERROR_EXIT(fh);
  }

  if (!isValidTarHeader(AH->lookahead))
   fatal("input file does not appear to be a valid archive");

  AH->format = archTar;
 }


 if (fseeko(fh, 0, SEEK_SET) != 0)
 {




  AH->readHeader = 1;
 }
 else
  AH->lookaheadLen = 0;


 if (wantClose)
  if (fclose(fh) != 0)
   fatal("could not close input file: %m");

 return AH->format;
}
