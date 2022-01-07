
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int off_t ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_9__ {scalar_t__ do_fsync; TYPE_1__* shared; } ;
struct TYPE_8__ {int num_files; int* segno; int* fd; } ;
struct TYPE_7__ {scalar_t__* group_lsn; int lsn_groups_per_page; int * page_buffer; } ;
typedef TYPE_1__* SlruShared ;
typedef TYPE_2__* SlruFlush ;
typedef TYPE_3__* SlruCtl ;


 int BLCKSZ ;
 scalar_t__ CloseTransientFile (int) ;
 int END_CRIT_SECTION () ;
 scalar_t__ ENOSPC ;
 int MAXPGPATH ;
 int MAX_FLUSH_BUFFERS ;
 int O_CREAT ;
 int O_RDWR ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 int SEEK_SET ;
 int SLRU_CLOSE_FAILED ;
 int SLRU_FSYNC_FAILED ;
 int SLRU_OPEN_FAILED ;
 int SLRU_PAGES_PER_SEGMENT ;
 int SLRU_SEEK_FAILED ;
 int SLRU_WRITE_FAILED ;
 int START_CRIT_SECTION () ;
 int SlruFileName (TYPE_3__*,char*,int) ;
 int WAIT_EVENT_SLRU_SYNC ;
 int WAIT_EVENT_SLRU_WRITE ;
 int XLogFlush (scalar_t__) ;
 int XLogRecPtrIsInvalid (scalar_t__) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 scalar_t__ pg_fsync (int) ;
 int pgstat_report_wait_end () ;
 int pgstat_report_wait_start (int ) ;
 int slru_errcause ;
 scalar_t__ slru_errno ;
 int write (int,int ,int) ;

__attribute__((used)) static bool
SlruPhysicalWritePage(SlruCtl ctl, int pageno, int slotno, SlruFlush fdata)
{
 SlruShared shared = ctl->shared;
 int segno = pageno / SLRU_PAGES_PER_SEGMENT;
 int rpageno = pageno % SLRU_PAGES_PER_SEGMENT;
 int offset = rpageno * BLCKSZ;
 char path[MAXPGPATH];
 int fd = -1;






 if (shared->group_lsn != ((void*)0))
 {







  XLogRecPtr max_lsn;
  int lsnindex,
     lsnoff;

  lsnindex = slotno * shared->lsn_groups_per_page;
  max_lsn = shared->group_lsn[lsnindex++];
  for (lsnoff = 1; lsnoff < shared->lsn_groups_per_page; lsnoff++)
  {
   XLogRecPtr this_lsn = shared->group_lsn[lsnindex++];

   if (max_lsn < this_lsn)
    max_lsn = this_lsn;
  }

  if (!XLogRecPtrIsInvalid(max_lsn))
  {






   START_CRIT_SECTION();
   XLogFlush(max_lsn);
   END_CRIT_SECTION();
  }
 }




 if (fdata)
 {
  int i;

  for (i = 0; i < fdata->num_files; i++)
  {
   if (fdata->segno[i] == segno)
   {
    fd = fdata->fd[i];
    break;
   }
  }
 }

 if (fd < 0)
 {
  SlruFileName(ctl, path, segno);
  fd = OpenTransientFile(path, O_RDWR | O_CREAT | PG_BINARY);
  if (fd < 0)
  {
   slru_errcause = SLRU_OPEN_FAILED;
   slru_errno = errno;
   return 0;
  }

  if (fdata)
  {
   if (fdata->num_files < MAX_FLUSH_BUFFERS)
   {
    fdata->fd[fdata->num_files] = fd;
    fdata->segno[fdata->num_files] = segno;
    fdata->num_files++;
   }
   else
   {




    fdata = ((void*)0);
   }
  }
 }

 if (lseek(fd, (off_t) offset, SEEK_SET) < 0)
 {
  slru_errcause = SLRU_SEEK_FAILED;
  slru_errno = errno;
  if (!fdata)
   CloseTransientFile(fd);
  return 0;
 }

 errno = 0;
 pgstat_report_wait_start(WAIT_EVENT_SLRU_WRITE);
 if (write(fd, shared->page_buffer[slotno], BLCKSZ) != BLCKSZ)
 {
  pgstat_report_wait_end();

  if (errno == 0)
   errno = ENOSPC;
  slru_errcause = SLRU_WRITE_FAILED;
  slru_errno = errno;
  if (!fdata)
   CloseTransientFile(fd);
  return 0;
 }
 pgstat_report_wait_end();





 if (!fdata)
 {
  pgstat_report_wait_start(WAIT_EVENT_SLRU_SYNC);
  if (ctl->do_fsync && pg_fsync(fd) != 0)
  {
   pgstat_report_wait_end();
   slru_errcause = SLRU_FSYNC_FAILED;
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
 }

 return 1;
}
