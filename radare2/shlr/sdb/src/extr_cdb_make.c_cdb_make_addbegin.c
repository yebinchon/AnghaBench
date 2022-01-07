
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
typedef int ut32 ;
struct cdb_make {int b; } ;


 int KVLSZ ;
 int buffer_putalign (int *,char const*,int) ;
 int pack_kvlen (int *,int ,int ) ;

int cdb_make_addbegin(struct cdb_make *c, ut32 keylen, ut32 datalen) {
 ut8 buf[KVLSZ];
 if (!pack_kvlen (buf, keylen, datalen)) {
  return 0;
 }
 return buffer_putalign (&c->b, (const char *)buf, KVLSZ);
}
