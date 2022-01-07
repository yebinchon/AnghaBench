
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t phar_tar_number(char *buf, size_t len)
{
 uint32_t num = 0;
 size_t i = 0;

 while (i < len && buf[i] == ' ') {
  ++i;
 }

 while (i < len && buf[i] >= '0' && buf[i] <= '7') {
  num = num * 8 + (buf[i] - '0');
  ++i;
 }

 return num;
}
