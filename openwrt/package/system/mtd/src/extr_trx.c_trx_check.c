
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trx_header {scalar_t__ magic; int len; } ;


 scalar_t__ TRX_MAGIC ;
 int close (int) ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int mtd_check_open (char const*) ;
 int mtdsize ;
 int quiet ;
 scalar_t__ read (int,char*,int) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;

int
trx_check(int imagefd, const char *mtd, char *buf, int *len)
{
 const struct trx_header *trx = (const struct trx_header *) buf;
 int fd;

 if (strcmp(mtd, "firmware") != 0)
  return 1;

 if (*len < 32) {
  *len += read(imagefd, buf + *len, 32 - *len);
  if (*len < 32) {
   fprintf(stdout, "Could not get image header, file too small (%d bytes)\n", *len);
   return 0;
  }
 }

 if (trx->magic != TRX_MAGIC || trx->len < sizeof(struct trx_header)) {
  if (quiet < 2) {
   fprintf(stderr, "Bad trx header\n");
   fprintf(stderr, "This is not the correct file format; refusing to flash.\n"
     "Please specify the correct file or use -f to force.\n");
  }
  return 0;
 }


 fd = mtd_check_open(mtd);
 if(fd < 0) {
  fprintf(stderr, "Could not open mtd device: %s\n", mtd);
  exit(1);
 }

 if(mtdsize < trx->len) {
  fprintf(stderr, "Image too big for partition: %s\n", mtd);
  close(fd);
  return 0;
 }

 close(fd);
 return 1;
}
