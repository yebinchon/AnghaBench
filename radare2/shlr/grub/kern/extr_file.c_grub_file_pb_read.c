
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ grub_ssize_t ;
typedef int grub_size_t ;
typedef int grub_file_t ;


 int GRUB_FILE_PB_MIN_SIZE ;
 int grub_file_pb_fini () ;
 int grub_file_pb_init () ;
 int grub_file_pb_show (int,int) ;
 scalar_t__ grub_file_read (int ,char*,int) ;

grub_ssize_t
grub_file_pb_read (grub_file_t file, void *b, grub_size_t len, int total)
{
  grub_ssize_t ret;
  grub_size_t bsize;
  int num;
  char *buf = b;

  if ((len < GRUB_FILE_PB_MIN_SIZE) || (total == 0))
    return grub_file_read (file, buf, len);

  ret = 0;
  if (grub_file_pb_init)
    grub_file_pb_init ();

  bsize = ((len / total) + 511) & (~511);
  num = 0;
  while (len > 0)
    {
      grub_size_t n;
      grub_ssize_t r;

      grub_file_pb_show (num, total);

      n = (len > bsize) ? bsize : len;
      r = grub_file_read (file, buf, n);
      if (r <= 0)
 {
   if (ret == 0)
     ret = -1;
   break;
 }

      buf += r;
      len -= r;
      ret += r;
      num++;
    }

  if (grub_file_pb_fini)
    grub_file_pb_fini ();
  return ret;
}
