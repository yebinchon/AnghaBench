
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int len; TYPE_1__* words; } ;
typedef TYPE_2__ hlCheck ;
struct TYPE_16__ {int curwords; TYPE_1__* words; } ;
struct TYPE_15__ {scalar_t__ type; int qoperand; } ;
struct TYPE_14__ {int size; } ;
struct TYPE_12__ {int * item; } ;
typedef TYPE_3__* TSQuery ;
typedef TYPE_4__ QueryItem ;
typedef TYPE_5__ HeadlineParsedText ;


 TYPE_4__* GETQUERY (TYPE_3__*) ;
 int INT_MAX ;
 scalar_t__ QI_VAL ;
 int TS_EXEC_EMPTY ;
 scalar_t__ TS_execute (TYPE_4__*,TYPE_2__*,int ,int ) ;
 int checkcondition_HL ;

__attribute__((used)) static bool
hlCover(HeadlineParsedText *prs, TSQuery query, int *p, int *q)
{
 int i,
    j;
 QueryItem *item = GETQUERY(query);
 int pos = *p;

 *q = -1;
 *p = INT_MAX;

 for (j = 0; j < query->size; j++)
 {
  if (item->type != QI_VAL)
  {
   item++;
   continue;
  }
  for (i = pos; i < prs->curwords; i++)
  {
   if (prs->words[i].item == &item->qoperand)
   {
    if (i > *q)
     *q = i;
    break;
   }
  }
  item++;
 }

 if (*q < 0)
  return 0;

 item = GETQUERY(query);
 for (j = 0; j < query->size; j++)
 {
  if (item->type != QI_VAL)
  {
   item++;
   continue;
  }
  for (i = *q; i >= pos; i--)
  {
   if (prs->words[i].item == &item->qoperand)
   {
    if (i < *p)
     *p = i;
    break;
   }
  }
  item++;
 }

 if (*p <= *q)
 {
  hlCheck ch;

  ch.words = &(prs->words[*p]);
  ch.len = *q - *p + 1;
  if (TS_execute(GETQUERY(query), &ch, TS_EXEC_EMPTY, checkcondition_HL))
   return 1;
  else
  {
   (*p)++;
   return hlCover(prs, query, p, q);
  }
 }

 return 0;
}
