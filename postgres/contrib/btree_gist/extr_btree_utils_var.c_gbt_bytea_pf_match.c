
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32 ;
typedef int gbtree_vinfo ;
typedef int bytea ;


 char* VARDATA (int const*) ;
 scalar_t__ VARHDRSZ ;
 scalar_t__ VARSIZE (int const*) ;
 scalar_t__ memcmp (char*,char*,scalar_t__) ;

__attribute__((used)) static bool
gbt_bytea_pf_match(const bytea *pf, const bytea *query, const gbtree_vinfo *tinfo)
{
 bool out = 0;
 int32 qlen = VARSIZE(query) - VARHDRSZ;
 int32 nlen = VARSIZE(pf) - VARHDRSZ;

 if (nlen <= qlen)
 {
  char *q = VARDATA(query);
  char *n = VARDATA(pf);

  out = (memcmp(q, n, nlen) == 0);
 }

 return out;
}
