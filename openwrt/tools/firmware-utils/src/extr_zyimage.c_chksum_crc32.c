
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_int32_t ;
typedef int FILE ;


 unsigned long* crc_tab ;
 int feof (int *) ;
 unsigned long fread (char*,int,int ,int *) ;
 int free (char*) ;
 char* malloc (int ) ;
 int szbuf ;

u_int32_t chksum_crc32 (FILE *f)
{
  register unsigned long crc;
  unsigned long i, j;
  char *buffer = malloc(szbuf);
  char *buf;

  crc = 0xFFFFFFFF;
  while (!feof(f))
  {
    j = fread(buffer, 1, szbuf, f);
    buf = buffer;
    for (i = 0; i < j; i++)
      crc = ((crc >> 8) & 0x00FFFFFF) ^ crc_tab[(crc ^ *buf++) & 0xFF];
  }
  free(buffer);
  return crc;
}
