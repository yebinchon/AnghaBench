
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void showhdr(unsigned char *hdr)
{
 int i, j;
 for (j = 0; j < 5; j++)
 {
  for (i = 0; i < 16; i++)
  {
   printf("%02x ", (unsigned int)(hdr[j * 16 + i]));
  }
  printf("   ");
  for (i = 0; i < 16; i++)
  {
   unsigned char d = hdr[j * 16 + i];
   printf("%c", (d >= ' ' && d < 127) ? d : '.');
  }
  printf("\n");
 }
}
