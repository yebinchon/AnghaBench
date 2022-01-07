
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int SlruCtl ;


 int BLCKSZ ;
 scalar_t__ CloseTransientFile (int) ;
 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 int O_RDONLY ;
 int OpenTransientFile (char*,int) ;
 int PG_BINARY ;
 int SEEK_END ;
 int SLRU_CLOSE_FAILED ;
 int SLRU_OPEN_FAILED ;
 int SLRU_PAGES_PER_SEGMENT ;
 int SLRU_SEEK_FAILED ;
 int SlruFileName (int ,char*,int) ;
 int SlruReportIOError (int ,int,int ) ;
 scalar_t__ errno ;
 scalar_t__ lseek (int,int ,int ) ;
 int slru_errcause ;
 scalar_t__ slru_errno ;

bool
SimpleLruDoesPhysicalPageExist(SlruCtl ctl, int pageno)
{
 int segno = pageno / SLRU_PAGES_PER_SEGMENT;
 int rpageno = pageno % SLRU_PAGES_PER_SEGMENT;
 int offset = rpageno * BLCKSZ;
 char path[MAXPGPATH];
 int fd;
 bool result;
 off_t endpos;

 SlruFileName(ctl, path, segno);

 fd = OpenTransientFile(path, O_RDONLY | PG_BINARY);
 if (fd < 0)
 {

  if (errno == ENOENT)
   return 0;


  slru_errcause = SLRU_OPEN_FAILED;
  slru_errno = errno;
  SlruReportIOError(ctl, pageno, 0);
 }

 if ((endpos = lseek(fd, 0, SEEK_END)) < 0)
 {
  slru_errcause = SLRU_SEEK_FAILED;
  slru_errno = errno;
  SlruReportIOError(ctl, pageno, 0);
 }

 result = endpos >= (off_t) (offset + BLCKSZ);

 if (CloseTransientFile(fd) != 0)
 {
  slru_errcause = SLRU_CLOSE_FAILED;
  slru_errno = errno;
  return 0;
 }

 return result;
}
