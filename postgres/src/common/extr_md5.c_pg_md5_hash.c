
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int bytesToHex (int *,char*) ;
 int calculateDigestFromBuffer (void const*,size_t,int *) ;

bool
pg_md5_hash(const void *buff, size_t len, char *hexsum)
{
 uint8 sum[16];

 if (!calculateDigestFromBuffer(buff, len, sum))
  return 0;

 bytesToHex(sum, hexsum);
 return 1;
}
