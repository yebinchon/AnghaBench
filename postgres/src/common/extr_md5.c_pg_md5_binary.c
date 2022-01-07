
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calculateDigestFromBuffer (void const*,size_t,void*) ;

bool
pg_md5_binary(const void *buff, size_t len, void *outbuf)
{
 if (!calculateDigestFromBuffer(buff, len, outbuf))
  return 0;
 return 1;
}
