
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;


 int INTALIGN (int) ;
 int SET_VARSIZE (int *,int) ;
 int VARBITBYTES (int *) ;
 scalar_t__ VARBITS (int *) ;
 scalar_t__ VARDATA (int *) ;
 int VARHDRSZ ;
 int memcpy (void*,void*,int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static bytea *
gbt_bit_xfrm(bytea *leaf)
{
 bytea *out = leaf;
 int sz = VARBITBYTES(leaf) + VARHDRSZ;
 int padded_sz = INTALIGN(sz);

 out = (bytea *) palloc(padded_sz);

 while (sz < padded_sz)
  ((char *) out)[sz++] = 0;
 SET_VARSIZE(out, padded_sz);
 memcpy((void *) VARDATA(out), (void *) VARBITS(leaf), VARBITBYTES(leaf));
 return out;
}
