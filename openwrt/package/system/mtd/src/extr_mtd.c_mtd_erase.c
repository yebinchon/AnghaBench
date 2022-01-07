
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct erase_info_user {int start; int length; } ;


 int MEMERASE ;
 int MEMUNLOCK ;
 int close (int) ;
 int erasesize ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ ioctl (int,int ,struct erase_info_user*) ;
 scalar_t__ mtd_block_is_bad (int,int) ;
 int mtd_check_open (char const*) ;
 int mtdsize ;
 int quiet ;
 int stderr ;

__attribute__((used)) static int
mtd_erase(const char *mtd)
{
 int fd;
 struct erase_info_user mtdEraseInfo;

 if (quiet < 2)
  fprintf(stderr, "Erasing %s ...\n", mtd);

 fd = mtd_check_open(mtd);
 if(fd < 0) {
  fprintf(stderr, "Could not open mtd device: %s\n", mtd);
  exit(1);
 }

 mtdEraseInfo.length = erasesize;

 for (mtdEraseInfo.start = 0;
   mtdEraseInfo.start < mtdsize;
   mtdEraseInfo.start += erasesize) {
  if (mtd_block_is_bad(fd, mtdEraseInfo.start)) {
   if (!quiet)
    fprintf(stderr, "\nSkipping bad block at 0x%x   ", mtdEraseInfo.start);
  } else {
   ioctl(fd, MEMUNLOCK, &mtdEraseInfo);
   if(ioctl(fd, MEMERASE, &mtdEraseInfo))
    fprintf(stderr, "Failed to erase block on %s at 0x%x\n", mtd, mtdEraseInfo.start);
  }
 }

 close(fd);
 return 0;

}
