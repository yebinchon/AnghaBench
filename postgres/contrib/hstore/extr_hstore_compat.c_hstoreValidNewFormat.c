
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int count ;
struct TYPE_6__ {int size_; } ;
typedef TYPE_1__ HStore ;
typedef int HEntry ;


 int * ARRPTR (TYPE_1__*) ;
 int CALCDATASIZE (int,int) ;
 int HSE_ENDPOS (int ) ;
 scalar_t__ HSE_ISFIRST (int ) ;
 scalar_t__ HSE_ISNULL (int ) ;
 scalar_t__ HSTORE_KEYLEN (int *,int) ;
 int HS_COUNT (TYPE_1__*) ;
 int HS_FLAG_NEWVERSION ;
 int VARSIZE (TYPE_1__*) ;

__attribute__((used)) static int
hstoreValidNewFormat(HStore *hs)
{
 int count = HS_COUNT(hs);
 HEntry *entries = ARRPTR(hs);
 int buflen = (count) ? HSE_ENDPOS(entries[2 * (count) - 1]) : 0;
 int vsize = CALCDATASIZE(count, buflen);
 int i;

 if (hs->size_ & HS_FLAG_NEWVERSION)
  return 2;

 if (count == 0)
  return 2;

 if (!HSE_ISFIRST(entries[0]))
  return 0;

 if (vsize > VARSIZE(hs))
  return 0;



 for (i = 1; i < 2 * count; ++i)
 {
  if (HSE_ISFIRST(entries[i])
   || (HSE_ENDPOS(entries[i]) < HSE_ENDPOS(entries[i - 1])))
   return 0;
 }



 for (i = 1; i < count; ++i)
 {
  if (HSTORE_KEYLEN(entries, i) < HSTORE_KEYLEN(entries, i - 1))
   return 0;
  if (HSE_ISNULL(entries[2 * i]))
   return 0;
 }

 if (vsize != VARSIZE(hs))
  return 1;

 return 2;
}
