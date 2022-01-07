
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WordEntryPos ;


 int MAXENTRYPOS ;
 int MAXNUMPOS ;
 int WEP_GETPOS (int ) ;
 scalar_t__ WEP_GETWEIGHT (int ) ;
 int WEP_SETWEIGHT (int ,scalar_t__) ;
 int compareWordEntryPos ;
 int qsort (void*,int,int,int ) ;

__attribute__((used)) static int
uniquePos(WordEntryPos *a, int l)
{
 WordEntryPos *ptr,
      *res;

 if (l <= 1)
  return l;

 qsort((void *) a, l, sizeof(WordEntryPos), compareWordEntryPos);

 res = a;
 ptr = a + 1;
 while (ptr - a < l)
 {
  if (WEP_GETPOS(*ptr) != WEP_GETPOS(*res))
  {
   res++;
   *res = *ptr;
   if (res - a >= MAXNUMPOS - 1 ||
    WEP_GETPOS(*res) == MAXENTRYPOS - 1)
    break;
  }
  else if (WEP_GETWEIGHT(*ptr) > WEP_GETWEIGHT(*res))
   WEP_SETWEIGHT(*res, WEP_GETWEIGHT(*ptr));
  ptr++;
 }

 return res + 1 - a;
}
