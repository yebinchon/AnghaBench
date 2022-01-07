
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WordEntry ;
typedef int TSVector ;


 int * ARRPTR (int ) ;
 int POSDATALEN (int ,int *) ;
 scalar_t__ STRPTR (int ) ;

__attribute__((used)) static int
cnt_length(TSVector t)
{
 WordEntry *ptr = ARRPTR(t),
      *end = (WordEntry *) STRPTR(t);
 int len = 0;

 while (ptr < end)
 {
  int clen = POSDATALEN(t, ptr);

  if (clen == 0)
   len += 1;
  else
   len += clen;

  ptr++;
 }

 return len;
}
