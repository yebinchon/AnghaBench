
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_6__ {TYPE_1__* shared; } ;
struct TYPE_5__ {int * page_buffer; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruCtl ;


 int BLCKSZ ;
 scalar_t__ CloseTransientFile (int) ;
 scalar_t__ ENOENT ;
 int InRecovery ;
 int LOG ;
 int MAXPGPATH ;
 int MemSet (int ,int ,int) ;
 int O_RDONLY ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 int SEEK_SET ;
 int SLRU_CLOSE_FAILED ;
 int SLRU_OPEN_FAILED ;
 int SLRU_PAGES_PER_SEGMENT ;
 int SLRU_READ_FAILED ;
 int SLRU_SEEK_FAILED ;
 int SlruFileName (TYPE_2__*,char*,int) ;
 int WAIT_EVENT_SLRU_READ ;
 int ereport (int ,int ) ;
 int errmsg (char*,char*) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int read (int,int ,int) ;
 int slru_errcause ;
 scalar_t__ slru_errno ;

__attribute__((used)) static bool
SlruPhysicalReadPage(SlruCtl ctl, int pageno, int slotno)
{
 SlruShared shared = ctl->shared;
 int segno = pageno / SLRU_PAGES_PER_SEGMENT;
 int rpageno = pageno % SLRU_PAGES_PER_SEGMENT;
 int offset = rpageno * BLCKSZ;
 char path[MAXPGPATH];
 int fd;

 SlruFileName(ctl, path, segno);
 fd = OpenTransientFile(path, O_RDONLY | PG_BINARY);
 if (fd < 0)
 {
  if (errno != ENOENT || !InRecovery)
  {
   slru_errcause = SLRU_OPEN_FAILED;
   slru_errno = errno;
   return 0;
  }

  ereport(LOG,
    (errmsg("file \"%s\" doesn't exist, reading as zeroes",
      path)));
  MemSet(shared->page_buffer[slotno], 0, BLCKSZ);
  return 1;
 }

 if (lseek(fd, (off_t) offset, SEEK_SET) < 0)
 {
  slru_errcause = SLRU_SEEK_FAILED;
  slru_errno = errno;
  CloseTransientFile(fd);
  return 0;
 }

 errno = 0;
 pgstat_report_wait_start(WAIT_EVENT_SLRU_READ);
 if (read(fd, shared->page_buffer[slotno], BLCKSZ) != BLCKSZ)
 {
  pgstat_report_wait_end();
  slru_errcause = SLRU_READ_FAILED;
  slru_errno = errno;
  CloseTransientFile(fd);
  return 0;
 }
 pgstat_report_wait_end();

 if (CloseTransientFile(fd) != 0)
 {
  slru_errcause = SLRU_CLOSE_FAILED;
  slru_errno = errno;
  return 0;
 }

 return 1;
}
