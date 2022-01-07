
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENC_MAGIC_LEN ;
 int memcmp (char*,void*,int ) ;

__attribute__((used)) static int check_magic(void *magic)
{
 if (!memcmp("start", magic, ENC_MAGIC_LEN))
  return 0;

 if (!memcmp("asar1", magic, ENC_MAGIC_LEN))
  return 0;

 return -1;
}
