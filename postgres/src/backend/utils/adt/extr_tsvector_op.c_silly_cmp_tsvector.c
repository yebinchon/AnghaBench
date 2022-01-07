
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WordEntryPos ;
struct TYPE_13__ {scalar_t__ haspos; int len; scalar_t__ pos; } ;
typedef TYPE_1__ WordEntry ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef TYPE_2__* TSVector ;


 TYPE_1__* ARRPTR (TYPE_2__* const) ;
 int POSDATALEN (TYPE_2__* const,TYPE_1__*) ;
 int * POSDATAPTR (TYPE_2__* const,TYPE_1__*) ;
 scalar_t__ STRPTR (TYPE_2__* const) ;
 scalar_t__ VARSIZE (TYPE_2__* const) ;
 scalar_t__ WEP_GETPOS (int ) ;
 scalar_t__ WEP_GETWEIGHT (int ) ;
 int tsCompareString (scalar_t__,int ,scalar_t__,int ,int) ;

__attribute__((used)) static int
silly_cmp_tsvector(const TSVector a, const TSVector b)
{
 if (VARSIZE(a) < VARSIZE(b))
  return -1;
 else if (VARSIZE(a) > VARSIZE(b))
  return 1;
 else if (a->size < b->size)
  return -1;
 else if (a->size > b->size)
  return 1;
 else
 {
  WordEntry *aptr = ARRPTR(a);
  WordEntry *bptr = ARRPTR(b);
  int i = 0;
  int res;


  for (i = 0; i < a->size; i++)
  {
   if (aptr->haspos != bptr->haspos)
   {
    return (aptr->haspos > bptr->haspos) ? -1 : 1;
   }
   else if ((res = tsCompareString(STRPTR(a) + aptr->pos, aptr->len, STRPTR(b) + bptr->pos, bptr->len, 0)) != 0)
   {
    return res;
   }
   else if (aptr->haspos)
   {
    WordEntryPos *ap = POSDATAPTR(a, aptr);
    WordEntryPos *bp = POSDATAPTR(b, bptr);
    int j;

    if (POSDATALEN(a, aptr) != POSDATALEN(b, bptr))
     return (POSDATALEN(a, aptr) > POSDATALEN(b, bptr)) ? -1 : 1;

    for (j = 0; j < POSDATALEN(a, aptr); j++)
    {
     if (WEP_GETPOS(*ap) != WEP_GETPOS(*bp))
     {
      return (WEP_GETPOS(*ap) > WEP_GETPOS(*bp)) ? -1 : 1;
     }
     else if (WEP_GETWEIGHT(*ap) != WEP_GETWEIGHT(*bp))
     {
      return (WEP_GETWEIGHT(*ap) > WEP_GETWEIGHT(*bp)) ? -1 : 1;
     }
     ap++, bp++;
    }
   }

   aptr++;
   bptr++;
  }
 }

 return 0;
}
