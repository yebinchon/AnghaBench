
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int trgm ;


 int Assert (int) ;
 int CPTRGM (int *,char*) ;
 int compact_trigram (int *,char*,int) ;
 int pg_mblen (char*) ;

__attribute__((used)) static trgm *
make_trigrams(trgm *tptr, char *str, int bytelen, int charlen)
{
 char *ptr = str;

 if (charlen < 3)
  return tptr;

 if (bytelen > charlen)
 {

  int lenfirst = pg_mblen(str),
     lenmiddle = pg_mblen(str + lenfirst),
     lenlast = pg_mblen(str + lenfirst + lenmiddle);

  while ((ptr - str) + lenfirst + lenmiddle + lenlast <= bytelen)
  {
   compact_trigram(tptr, ptr, lenfirst + lenmiddle + lenlast);

   ptr += lenfirst;
   tptr++;

   lenfirst = lenmiddle;
   lenmiddle = lenlast;
   lenlast = pg_mblen(ptr + lenfirst + lenmiddle);
  }
 }
 else
 {

  Assert(bytelen == charlen);

  while (ptr - str < bytelen - 2 )
  {
   CPTRGM(tptr, ptr);
   ptr++;
   tptr++;
  }
 }

 return tptr;
}
