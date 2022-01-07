
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ spiffs_file ;
typedef int s32_t ;
typedef int buff ;


 int O_RDONLY ;
 int SPIFFS_CREAT ;
 int SPIFFS_TRUNC ;
 int SPIFFS_WRONLY ;
 scalar_t__ SPIFFS_close (int *,scalar_t__) ;
 scalar_t__ SPIFFS_open (int *,char*,int,int ) ;
 scalar_t__ SPIFFS_write (int *,scalar_t__,char*,int ) ;
 int close (int) ;
 int die (char*) ;
 int fs ;
 int open (char*,int ) ;
 int read (int,char*,int) ;

__attribute__((used)) static void import (char *src, char *dst)
{
  int fd = open (src, O_RDONLY);
  if (fd < 0)
    die (src);

  spiffs_file fh = SPIFFS_open (&fs, dst, SPIFFS_CREAT | SPIFFS_TRUNC | SPIFFS_WRONLY, 0);
  if (fh < 0)
    die ("spiffs_open");

  char buff[16384];
  s32_t n;
  while ((n = read (fd, buff, sizeof (buff))) > 0)
    if (SPIFFS_write (&fs, fh, buff, n) < 0)
      die ("spiffs_write");

  if (SPIFFS_close (&fs, fh) < 0)
    die("spiffs_close");
  close (fd);
}
