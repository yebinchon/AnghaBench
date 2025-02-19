
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_8__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32 ;
typedef int ltree_level ;
struct TYPE_11__ {scalar_t__ numvar; int flag; int low; int high; } ;
typedef TYPE_1__ lquery_level ;
struct TYPE_13__ {int muse; int high_pos; } ;
struct TYPE_12__ {int nt; int nq; int posq; int post; int * t; TYPE_1__* q; } ;
typedef TYPE_2__ FieldNot ;


 int * LEVEL_NEXT (int *) ;
 TYPE_1__* LQL_NEXT (TYPE_1__*) ;
 int LQL_NOT ;
 TYPE_8__ SomeStack ;
 int checkLevel (TYPE_1__*,int *) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

__attribute__((used)) static bool
checkCond(lquery_level *curq, int query_numlevel, ltree_level *curt, int tree_numlevel, FieldNot *ptr)
{
 uint32 low_pos = 0,
    high_pos = 0,
    cur_tpos = 0;
 int tlen = tree_numlevel,
    qlen = query_numlevel;
 int isok;
 lquery_level *prevq = ((void*)0);
 ltree_level *prevt = ((void*)0);

 if (SomeStack.muse)
 {
  high_pos = SomeStack.high_pos;
  qlen--;
  prevq = curq;
  curq = LQL_NEXT(curq);
  SomeStack.muse = 0;
 }

 while (tlen > 0 && qlen > 0)
 {
  if (curq->numvar)
  {
   prevt = curt;
   while (cur_tpos < low_pos)
   {
    curt = LEVEL_NEXT(curt);
    tlen--;
    cur_tpos++;
    if (tlen == 0)
     return 0;
    if (ptr && ptr->q)
     ptr->nt++;
   }

   if (ptr && curq->flag & LQL_NOT)
   {
    if (!(prevq && prevq->numvar == 0))
     prevq = curq;
    if (ptr->q == ((void*)0))
    {
     ptr->t = prevt;
     ptr->q = prevq;
     ptr->nt = 1;
     ptr->nq = 1 + ((prevq == curq) ? 0 : 1);
     ptr->posq = query_numlevel - qlen - ((prevq == curq) ? 0 : 1);
     ptr->post = cur_tpos;
    }
    else
    {
     ptr->nt++;
     ptr->nq++;
    }

    if (qlen == 1 && ptr->q->numvar == 0)
     ptr->nt = tree_numlevel - ptr->post;
    curt = LEVEL_NEXT(curt);
    tlen--;
    cur_tpos++;
    if (high_pos < cur_tpos)
     high_pos++;
   }
   else
   {
    isok = 0;
    while (cur_tpos <= high_pos && tlen > 0 && !isok)
    {
     isok = checkLevel(curq, curt);
     curt = LEVEL_NEXT(curt);
     tlen--;
     cur_tpos++;
     if (isok && prevq && prevq->numvar == 0 && tlen > 0 && cur_tpos <= high_pos)
     {
      FieldNot tmpptr;

      if (ptr)
       memcpy(&tmpptr, ptr, sizeof(FieldNot));
      SomeStack.high_pos = high_pos - cur_tpos;
      SomeStack.muse = 1;
      if (checkCond(prevq, qlen + 1, curt, tlen, (ptr) ? &tmpptr : ((void*)0)))
       return 1;
     }
     if (!isok && ptr)
      ptr->nt++;
    }
    if (!isok)
     return 0;

    if (ptr && ptr->q)
    {
     if (checkCond(ptr->q, ptr->nq, ptr->t, ptr->nt, ((void*)0)))
      return 0;
     ptr->q = ((void*)0);
    }
    low_pos = cur_tpos;
    high_pos = cur_tpos;
   }
  }
  else
  {
   low_pos = cur_tpos + curq->low;
   high_pos = cur_tpos + curq->high;
   if (ptr && ptr->q)
   {
    ptr->nq++;
    if (qlen == 1)
     ptr->nt = tree_numlevel - ptr->post;
   }
  }

  prevq = curq;
  curq = LQL_NEXT(curq);
  qlen--;
 }

 if (low_pos > tree_numlevel || tree_numlevel > high_pos)
  return 0;

 while (qlen > 0)
 {
  if (curq->numvar)
  {
   if (!(curq->flag & LQL_NOT))
    return 0;
  }
  else
  {
   low_pos = cur_tpos + curq->low;
   high_pos = cur_tpos + curq->high;
  }

  curq = LQL_NEXT(curq);
  qlen--;
 }

 if (low_pos > tree_numlevel || tree_numlevel > high_pos)
  return 0;

 if (ptr && ptr->q && checkCond(ptr->q, ptr->nq, ptr->t, ptr->nt, ((void*)0)))
  return 0;

 return 1;
}
