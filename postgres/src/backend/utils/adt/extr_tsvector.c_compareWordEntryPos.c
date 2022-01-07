
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WordEntryPos ;


 int WEP_GETPOS (int const) ;

int
compareWordEntryPos(const void *a, const void *b)
{
 int apos = WEP_GETPOS(*(const WordEntryPos *) a);
 int bpos = WEP_GETPOS(*(const WordEntryPos *) b);

 if (apos == bpos)
  return 0;
 return (apos > bpos) ? 1 : -1;
}
