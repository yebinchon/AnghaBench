
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int get_checksum(unsigned char* img)
{
  short unsigned s;

  s = img[0x3dfffc] + (img[0x3dfffd]<<8);

  return s;
}
