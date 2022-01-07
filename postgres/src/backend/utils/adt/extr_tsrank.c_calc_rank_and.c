
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_16__ {int npos; scalar_t__* pos; } ;
typedef TYPE_1__ WordEntryPosVector1 ;
struct TYPE_17__ {int npos; int * pos; } ;
typedef TYPE_2__ WordEntryPosVector ;
typedef int WordEntryPos ;
struct TYPE_18__ {scalar_t__ haspos; } ;
typedef TYPE_3__ WordEntry ;
struct TYPE_19__ {int size; } ;
typedef int TSVector ;
typedef TYPE_4__* TSQuery ;
typedef TYPE_2__ QueryOperand ;


 int Abs (int) ;
 int MAXENTRYPOS ;
 TYPE_2__** SortAndUniqItems (TYPE_4__*,int*) ;
 scalar_t__ WEP_GETPOS (int ) ;
 int WEP_SETPOS (scalar_t__,int) ;
 TYPE_2__* _POSVECPTR (int ,TYPE_3__*) ;
 float calc_rank_or (float const*,int ,TYPE_4__*) ;
 TYPE_3__* find_wordentry (int ,TYPE_4__*,TYPE_2__*,int*) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_2__**) ;
 float sqrt (int) ;
 int word_distance (int) ;
 int wpos (int ) ;

__attribute__((used)) static float
calc_rank_and(const float *w, TSVector t, TSQuery q)
{
 WordEntryPosVector **pos;
 WordEntryPosVector1 posnull;
 WordEntryPosVector *POSNULL;
 int i,
    k,
    l,
    p;
 WordEntry *entry,
      *firstentry;
 WordEntryPos *post,
      *ct;
 int32 dimt,
    lenct,
    dist,
    nitem;
 float res = -1.0;
 QueryOperand **item;
 int size = q->size;

 item = SortAndUniqItems(q, &size);
 if (size < 2)
 {
  pfree(item);
  return calc_rank_or(w, t, q);
 }
 pos = (WordEntryPosVector **) palloc0(sizeof(WordEntryPosVector *) * q->size);


 posnull.npos = 1;
 posnull.pos[0] = 0;
 WEP_SETPOS(posnull.pos[0], MAXENTRYPOS - 1);
 POSNULL = (WordEntryPosVector *) &posnull;

 for (i = 0; i < size; i++)
 {
  firstentry = entry = find_wordentry(t, q, item[i], &nitem);
  if (!entry)
   continue;

  while (entry - firstentry < nitem)
  {
   if (entry->haspos)
    pos[i] = _POSVECPTR(t, entry);
   else
    pos[i] = POSNULL;

   dimt = pos[i]->npos;
   post = pos[i]->pos;
   for (k = 0; k < i; k++)
   {
    if (!pos[k])
     continue;
    lenct = pos[k]->npos;
    ct = pos[k]->pos;
    for (l = 0; l < dimt; l++)
    {
     for (p = 0; p < lenct; p++)
     {
      dist = Abs((int) WEP_GETPOS(post[l]) - (int) WEP_GETPOS(ct[p]));
      if (dist || (dist == 0 && (pos[i] == POSNULL || pos[k] == POSNULL)))
      {
       float curw;

       if (!dist)
        dist = MAXENTRYPOS;
       curw = sqrt(wpos(post[l]) * wpos(ct[p]) * word_distance(dist));
       res = (res < 0) ? curw : 1.0 - (1.0 - res) * (1.0 - curw);
      }
     }
    }
   }

   entry++;
  }
 }
 pfree(pos);
 pfree(item);
 return res;
}
