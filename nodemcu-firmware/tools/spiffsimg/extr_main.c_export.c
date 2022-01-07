
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ spiffs_file ;
typedef int s32_t ;
typedef int buff ;


 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int SPIFFS_RDONLY ;
 int SPIFFS_close (int *,scalar_t__) ;
 scalar_t__ SPIFFS_open (int *,char*,int ,int ) ;
 int SPIFFS_read (int *,scalar_t__,char*,int) ;
 int close (int) ;
 int die (char*) ;
 int fs ;
 int open (char*,int,int) ;
 scalar_t__ write (int,char*,int ) ;

__attribute__((used)) static void export (char *src, char *dst)
{
  spiffs_file fh = SPIFFS_open (&fs, src, SPIFFS_RDONLY, 0);
  if (fh < 0)
    die ("spiffs_open");

  int fd = open (dst, O_CREAT | O_TRUNC | O_WRONLY, 0664);
  if (fd < 0)
    die (dst);

  char buff[512];
  s32_t n;
  while ((n = SPIFFS_read (&fs, fh, buff, sizeof (buff))) > 0)
    if (write (fd, buff, n) < 0)
      die ("write");

  SPIFFS_close (&fs, fh);
  close (fd);
}
