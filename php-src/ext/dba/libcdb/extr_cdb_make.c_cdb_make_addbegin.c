
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb_make {int dummy; } ;


 int ENOMEM ;
 scalar_t__ cdb_make_write (struct cdb_make*,char*,int) ;
 int errno ;
 int uint32_pack (char*,unsigned int) ;

int cdb_make_addbegin(struct cdb_make *c, unsigned int keylen, unsigned int datalen)
{
 char buf[8];

 if (keylen > 0xffffffff) {
  errno = ENOMEM;
  return -1;
 }
 if (datalen > 0xffffffff) {
  errno = ENOMEM;
  return -1;
 }

 uint32_pack(buf, keylen);
 uint32_pack(buf + 4, datalen);
 if (cdb_make_write(c, buf, 8) != 0)
  return -1;
 return 0;
}
