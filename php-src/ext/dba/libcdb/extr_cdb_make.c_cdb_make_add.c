
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdb_make {int dummy; } ;


 int cdb_hash (char*,unsigned int) ;
 int cdb_make_addbegin (struct cdb_make*,unsigned int,unsigned int) ;
 int cdb_make_addend (struct cdb_make*,unsigned int,unsigned int,int ) ;
 scalar_t__ cdb_make_write (struct cdb_make*,char*,unsigned int) ;

int cdb_make_add(struct cdb_make *c,char *key,unsigned int keylen,char *data,unsigned int datalen)
{
 if (cdb_make_addbegin(c, keylen, datalen) == -1)
  return -1;
 if (cdb_make_write(c, key, keylen) != 0)
  return -1;
 if (cdb_make_write(c, data, datalen) != 0)
  return -1;
 return cdb_make_addend(c, keylen, datalen, cdb_hash(key, keylen));
}
