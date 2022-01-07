
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spiffs_file ;
typedef int s32_t ;
typedef int buff ;


 int SPIFFS_RDONLY ;
 int SPIFFS_close (int *,int ) ;
 int SPIFFS_open (int *,char*,int ,int ) ;
 int SPIFFS_read (int *,int ,char*,int) ;
 int STDOUT_FILENO ;
 int fs ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void cat (char *fname)
{
  spiffs_file fh = SPIFFS_open (&fs, fname, SPIFFS_RDONLY, 0);
  char buff[512];
  s32_t n;
  while ((n = SPIFFS_read (&fs, fh, buff, sizeof (buff))) > 0)
    write (STDOUT_FILENO, buff, n);
  SPIFFS_close (&fs, fh);
}
