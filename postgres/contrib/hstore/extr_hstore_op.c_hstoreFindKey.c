
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HStore ;
typedef int HEntry ;


 int * ARRPTR (int *) ;
 int HSTORE_KEY (int *,char*,int) ;
 int HSTORE_KEYLEN (int *,int) ;
 int HS_COUNT (int *) ;
 char* STRPTR (int *) ;
 int memcmp (int ,char*,int) ;

int
hstoreFindKey(HStore *hs, int *lowbound, char *key, int keylen)
{
 HEntry *entries = ARRPTR(hs);
 int stopLow = lowbound ? *lowbound : 0;
 int stopHigh = HS_COUNT(hs);
 int stopMiddle;
 char *base = STRPTR(hs);

 while (stopLow < stopHigh)
 {
  int difference;

  stopMiddle = stopLow + (stopHigh - stopLow) / 2;

  if (HSTORE_KEYLEN(entries, stopMiddle) == keylen)
   difference = memcmp(HSTORE_KEY(entries, base, stopMiddle), key, keylen);
  else
   difference = (HSTORE_KEYLEN(entries, stopMiddle) > keylen) ? 1 : -1;

  if (difference == 0)
  {
   if (lowbound)
    *lowbound = stopMiddle + 1;
   return stopMiddle;
  }
  else if (difference < 0)
   stopLow = stopMiddle + 1;
  else
   stopHigh = stopMiddle;
 }

 if (lowbound)
  *lowbound = stopLow;
 return -1;
}
