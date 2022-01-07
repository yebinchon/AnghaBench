
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t OffsetNumber ;



__attribute__((used)) static void
removeDontCares(OffsetNumber *a, int *len, const bool *dontcare)
{
 int origlen,
    newlen,
    i;
 OffsetNumber *curwpos;

 origlen = newlen = *len;
 curwpos = a;
 for (i = 0; i < origlen; i++)
 {
  OffsetNumber ai = a[i];

  if (dontcare[ai] == 0)
  {

   *curwpos = ai;
   curwpos++;
  }
  else
   newlen--;
 }

 *len = newlen;
}
