
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ArchiveHandle ;


 int PG_BINARY_R ;
 size_t ZLIB_OUT_SIZE ;
 int ahwrite (char*,int,size_t,int *) ;
 scalar_t__ cfclose (int) ;
 int cfopen_read (char*,int ) ;
 int cfp ;
 size_t cfread (char*,size_t,int) ;
 int fatal (char*,...) ;
 int free (char*) ;
 char* pg_malloc (size_t) ;

__attribute__((used)) static void
_PrintFileData(ArchiveHandle *AH, char *filename)
{
 size_t cnt;
 char *buf;
 size_t buflen;
 cfp *cfp;

 if (!filename)
  return;

 cfp = cfopen_read(filename, PG_BINARY_R);

 if (!cfp)
  fatal("could not open input file \"%s\": %m", filename);

 buf = pg_malloc(ZLIB_OUT_SIZE);
 buflen = ZLIB_OUT_SIZE;

 while ((cnt = cfread(buf, buflen, cfp)))
 {
  ahwrite(buf, 1, cnt, AH);
 }

 free(buf);
 if (cfclose(cfp) !=0)
  fatal("could not close data file: %m");
}
