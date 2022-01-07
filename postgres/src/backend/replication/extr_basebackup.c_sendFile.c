
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16 ;
struct stat {int st_size; } ;
typedef int pgoff_t ;
typedef int off_t ;
typedef int buf ;
struct TYPE_2__ {int pd_checksum; } ;
typedef TYPE_1__* PageHeader ;
typedef int Oid ;
typedef int FILE ;
typedef int BlockNumber ;


 int * AllocateFile (char const*,char*) ;
 int Assert (int) ;
 int BLCKSZ ;
 int CHECK_FREAD_ERROR (int *,char const*) ;
 scalar_t__ DataChecksumsEnabled () ;
 scalar_t__ ENOENT ;
 int ERROR ;
 int FreeFile (int *) ;
 int MemSet (char*,int ,size_t) ;
 int Min (int,int) ;
 scalar_t__ PageGetLSN (char*) ;
 int PageIsNew (char*) ;
 int RELSEG_SIZE ;
 int SEEK_CUR ;
 int TAR_SEND_SIZE ;
 int WARNING ;
 int _tarWriteHeader (char const*,int *,struct stat*,int) ;
 int atoi (char*) ;
 int ereport (int ,int ) ;
 int errcode_for_file_access () ;
 int errmsg (char*,...) ;
 int errmsg_plural (char*,char*,int,char const*,int) ;
 scalar_t__ errno ;
 scalar_t__ feof (int *) ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 scalar_t__ is_checksummed_file (char const*,char*) ;
 char* last_dir_separator (char const*) ;
 int noverify_checksums ;
 int pg_checksum_page (char*,int ) ;
 int pgstat_report_checksum_failures_in_db (int ,int) ;
 scalar_t__ pq_putmessage (char,char*,size_t) ;
 scalar_t__ startptr ;
 char* strstr (char*,char*) ;
 int throttle (int) ;
 int total_checksum_failures ;

__attribute__((used)) static bool
sendFile(const char *readfilename, const char *tarfilename, struct stat *statbuf,
   bool missing_ok, Oid dboid)
{
 FILE *fp;
 BlockNumber blkno = 0;
 bool block_retry = 0;
 char buf[TAR_SEND_SIZE];
 uint16 checksum;
 int checksum_failures = 0;
 off_t cnt;
 int i;
 pgoff_t len = 0;
 char *page;
 size_t pad;
 PageHeader phdr;
 int segmentno = 0;
 char *segmentpath;
 bool verify_checksum = 0;

 fp = AllocateFile(readfilename, "rb");
 if (fp == ((void*)0))
 {
  if (errno == ENOENT && missing_ok)
   return 0;
  ereport(ERROR,
    (errcode_for_file_access(),
     errmsg("could not open file \"%s\": %m", readfilename)));
 }

 _tarWriteHeader(tarfilename, ((void*)0), statbuf, 0);

 if (!noverify_checksums && DataChecksumsEnabled())
 {
  char *filename;






  filename = last_dir_separator(readfilename) + 1;

  if (is_checksummed_file(readfilename, filename))
  {
   verify_checksum = 1;





   segmentpath = strstr(filename, ".");
   if (segmentpath != ((void*)0))
   {
    segmentno = atoi(segmentpath + 1);
    if (segmentno == 0)
     ereport(ERROR,
       (errmsg("invalid segment number %d in file \"%s\"",
         segmentno, filename)));
   }
  }
 }

 while ((cnt = fread(buf, 1, Min(sizeof(buf), statbuf->st_size - len), fp)) > 0)
 {






  Assert(TAR_SEND_SIZE % BLCKSZ == 0);

  if (verify_checksum && (cnt % BLCKSZ != 0))
  {
   ereport(WARNING,
     (errmsg("could not verify checksum in file \"%s\", block "
       "%d: read buffer size %d and page size %d "
       "differ",
       readfilename, blkno, (int) cnt, BLCKSZ)));
   verify_checksum = 0;
  }

  if (verify_checksum)
  {
   for (i = 0; i < cnt / BLCKSZ; i++)
   {
    page = buf + BLCKSZ * i;
    if (!PageIsNew(page) && PageGetLSN(page) < startptr)
    {
     checksum = pg_checksum_page((char *) page, blkno + segmentno * RELSEG_SIZE);
     phdr = (PageHeader) page;
     if (phdr->pd_checksum != checksum)
     {
      if (block_retry == 0)
      {

       if (fseek(fp, -(cnt - BLCKSZ * i), SEEK_CUR) == -1)
       {
        ereport(ERROR,
          (errcode_for_file_access(),
           errmsg("could not fseek in file \"%s\": %m",
            readfilename)));
       }

       if (fread(buf + BLCKSZ * i, 1, BLCKSZ, fp) != BLCKSZ)
       {
        if (feof(fp))
        {
         cnt = BLCKSZ * i;
         break;
        }

        ereport(ERROR,
          (errcode_for_file_access(),
           errmsg("could not reread block %d of file \"%s\": %m",
            blkno, readfilename)));
       }

       if (fseek(fp, cnt - BLCKSZ * i - BLCKSZ, SEEK_CUR) == -1)
       {
        ereport(ERROR,
          (errcode_for_file_access(),
           errmsg("could not fseek in file \"%s\": %m",
            readfilename)));
       }


       block_retry = 1;


       i--;
       continue;
      }

      checksum_failures++;

      if (checksum_failures <= 5)
       ereport(WARNING,
         (errmsg("checksum verification failed in "
           "file \"%s\", block %d: calculated "
           "%X but expected %X",
           readfilename, blkno, checksum,
           phdr->pd_checksum)));
      if (checksum_failures == 5)
       ereport(WARNING,
         (errmsg("further checksum verification "
           "failures in file \"%s\" will not "
           "be reported", readfilename)));
     }
    }
    block_retry = 0;
    blkno++;
   }
  }


  if (pq_putmessage('d', buf, cnt))
   ereport(ERROR,
     (errmsg("base backup could not send data, aborting backup")));

  len += cnt;
  throttle(cnt);

  if (feof(fp) || len >= statbuf->st_size)
  {





   break;
  }
 }

 CHECK_FREAD_ERROR(fp, readfilename);


 if (len < statbuf->st_size)
 {
  MemSet(buf, 0, sizeof(buf));
  while (len < statbuf->st_size)
  {
   cnt = Min(sizeof(buf), statbuf->st_size - len);
   pq_putmessage('d', buf, cnt);
   len += cnt;
   throttle(cnt);
  }
 }





 pad = ((len + 511) & ~511) - len;
 if (pad > 0)
 {
  MemSet(buf, 0, pad);
  pq_putmessage('d', buf, pad);
 }

 FreeFile(fp);

 if (checksum_failures > 1)
 {
  ereport(WARNING,
    (errmsg_plural("file \"%s\" has a total of %d checksum verification failure",
          "file \"%s\" has a total of %d checksum verification failures",
          checksum_failures,
          readfilename, checksum_failures)));

  pgstat_report_checksum_failures_in_db(dboid, checksum_failures);
 }

 total_checksum_failures += checksum_failures;

 return 1;
}
