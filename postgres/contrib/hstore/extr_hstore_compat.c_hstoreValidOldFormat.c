
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int pos; scalar_t__ keylen; scalar_t__ vallen; scalar_t__ valisnull; } ;
struct TYPE_6__ {int size_; } ;
typedef TYPE_1__ HStore ;
typedef TYPE_2__ HOldEntry ;
typedef int HEntry ;


 scalar_t__ ARRPTR (TYPE_1__*) ;
 int CALCDATASIZE (int,int) ;
 int HS_FLAG_NEWVERSION ;
 int StaticAssertStmt (int,char*) ;
 int VARSIZE (TYPE_1__*) ;

__attribute__((used)) static int
hstoreValidOldFormat(HStore *hs)
{
 int count = hs->size_;
 HOldEntry *entries = (HOldEntry *) ARRPTR(hs);
 int vsize;
 int lastpos = 0;
 int i;

 if (hs->size_ & HS_FLAG_NEWVERSION)
  return 0;


 StaticAssertStmt(sizeof(HOldEntry) == 2 * sizeof(HEntry),
      "old hstore format is not upward-compatible");

 if (count == 0)
  return 2;

 if (count > 0xFFFFFFF)
  return 0;

 if (CALCDATASIZE(count, 0) > VARSIZE(hs))
  return 0;

 if (entries[0].pos != 0)
  return 0;



 for (i = 1; i < count; ++i)
 {
  if (entries[i].keylen < entries[i - 1].keylen)
   return 0;
 }







 for (i = 0; i < count; ++i)
 {
  if (entries[i].pos != lastpos)
   return 0;
  lastpos += (entries[i].keylen
     + ((entries[i].valisnull) ? 0 : entries[i].vallen));
 }

 vsize = CALCDATASIZE(count, lastpos);

 if (vsize > VARSIZE(hs))
  return 0;

 if (vsize != VARSIZE(hs))
  return 1;

 return 2;
}
