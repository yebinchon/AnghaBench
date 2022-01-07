
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8 ;
typedef int WordEntryPos ;
typedef int WordEntry ;
typedef int TSVector ;


 int POSDATALEN (int ,int *) ;
 int * POSDATAPTR (int ,int *) ;
 int WEP_GETWEIGHT (int ) ;

__attribute__((used)) static int
check_weight(TSVector txt, WordEntry *wptr, int8 weight)
{
 int len = POSDATALEN(txt, wptr);
 int num = 0;
 WordEntryPos *ptr = POSDATAPTR(txt, wptr);

 while (len--)
 {
  if (weight & (1 << WEP_GETWEIGHT(*ptr)))
   num++;
  ptr++;
 }
 return num;
}
