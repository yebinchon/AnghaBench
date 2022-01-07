
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32_t ;



__attribute__((used)) static uint32_t phar_tar_checksum(char *buf, size_t len)
{
 uint32_t sum = 0;
 char *end = buf + len;

 while (buf != end) {
  sum += (unsigned char)*buf;
  ++buf;
 }
 return sum;
}
