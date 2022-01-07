
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;


 int Min (int,int) ;
 int memcmp (char*,char*,int ) ;

int32
tsCompareString(char *a, int lena, char *b, int lenb, bool prefix)
{
 int cmp;

 if (lena == 0)
 {
  if (prefix)
   cmp = 0;
  else
   cmp = (lenb > 0) ? -1 : 0;
 }
 else if (lenb == 0)
 {
  cmp = (lena > 0) ? 1 : 0;
 }
 else
 {
  cmp = memcmp(a, b, Min(lena, lenb));

  if (prefix)
  {
   if (cmp == 0 && lena > lenb)
    cmp = 1;
  }
  else if (cmp == 0 && lena != lenb)
  {
   cmp = (lena < lenb) ? -1 : 1;
  }
 }

 return cmp;
}
