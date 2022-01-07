
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memcmp (char*,char*,int) ;
 int read_tar_number (char*,int) ;
 int tarChecksum (char*) ;

bool
isValidTarHeader(char *header)
{
 int sum;
 int chk = tarChecksum(header);

 sum = read_tar_number(&header[148], 8);

 if (sum != chk)
  return 0;


 if (memcmp(&header[257], "ustar\0", 6) == 0 &&
  memcmp(&header[263], "00", 2) == 0)
  return 1;

 if (memcmp(&header[257], "ustar  \0", 8) == 0)
  return 1;

 if (memcmp(&header[257], "ustar00\0", 8) == 0)
  return 1;

 return 0;
}
