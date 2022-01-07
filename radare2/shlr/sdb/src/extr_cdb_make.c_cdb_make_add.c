
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;
struct cdb_make {int b; } ;


 int buffer_putalign (int *,char const*,int ) ;
 int cdb_make_addbegin (struct cdb_make*,int ,int ) ;
 int cdb_make_addend (struct cdb_make*,int ,int ,int ) ;
 int sdb_hash (char const*) ;

int cdb_make_add(struct cdb_make *c, const char *key, ut32 keylen, const char *data, ut32 datalen) {

 keylen++;
 datalen++;
 if (!cdb_make_addbegin (c, keylen, datalen)) {
  return 0;
 }
 if (!buffer_putalign (&c->b, key, keylen)) {
  return 0;
 }
 if (!buffer_putalign (&c->b, data, datalen)) {
  return 0;
 }
 return cdb_make_addend (c, keylen, datalen, sdb_hash (key));
}
