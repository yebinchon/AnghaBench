
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EINTR ;
 int SEEK_SET ;
 int close (int) ;
 int erasesize ;
 scalar_t__ errno ;
 int fprintf (int ,char*,...) ;
 int lseek (int,int,int ) ;
 char* malloc (int) ;
 scalar_t__ mtd_block_is_bad (int,int) ;
 int mtd_check_open (char const*) ;
 int mtdsize ;
 int quiet ;
 int read (int,char*,int) ;
 int stderr ;
 int write (int,char*,int) ;

__attribute__((used)) static int
mtd_dump(const char *mtd, int part_offset, int size)
{
 int ret = 0, offset = 0;
 int fd;
 char *buf;

 if (quiet < 2)
  fprintf(stderr, "Dumping %s ...\n", mtd);

 fd = mtd_check_open(mtd);
 if(fd < 0) {
  fprintf(stderr, "Could not open mtd device: %s\n", mtd);
  return -1;
 }

 if (!size)
  size = mtdsize;

 if (part_offset)
  lseek(fd, part_offset, SEEK_SET);

 buf = malloc(erasesize);
 if (!buf)
  return -1;

 do {
  int len = (size > erasesize) ? (erasesize) : (size);
  int rlen = read(fd, buf, len);

  if (rlen < 0) {
   if (errno == EINTR)
    continue;
   ret = -1;
   goto out;
  }
  if (!rlen || rlen != len)
   break;
  if (mtd_block_is_bad(fd, offset)) {
   fprintf(stderr, "skipping bad block at 0x%08x\n", offset);
  } else {
   size -= rlen;
   write(1, buf, rlen);
  }
  offset += rlen;
 } while (size > 0);

out:
 close(fd);
 return ret;
}
