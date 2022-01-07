
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 scalar_t__ ENOSPC ;
 int SEEK_SET ;
 scalar_t__ dry_run ;
 int dstfd ;
 int dstpath ;
 scalar_t__ errno ;
 size_t fetch_done ;
 int lseek (int ,int ,int ) ;
 int pg_fatal (char*,int ) ;
 int progress_report (int) ;
 int write (int ,char*,int) ;

void
write_target_range(char *buf, off_t begin, size_t size)
{
 int writeleft;
 char *p;


 fetch_done += size;
 progress_report(0);

 if (dry_run)
  return;

 if (lseek(dstfd, begin, SEEK_SET) == -1)
  pg_fatal("could not seek in target file \"%s\": %m",
     dstpath);

 writeleft = size;
 p = buf;
 while (writeleft > 0)
 {
  int writelen;

  errno = 0;
  writelen = write(dstfd, p, writeleft);
  if (writelen < 0)
  {

   if (errno == 0)
    errno = ENOSPC;
   pg_fatal("could not write file \"%s\": %m",
      dstpath);
  }

  p += writelen;
  writeleft -= writelen;
 }


}
