
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WordEntryPos ;
struct TYPE_11__ {int len; scalar_t__ pos; } ;
typedef TYPE_1__ WordEntry ;
struct TYPE_14__ {scalar_t__ values; scalar_t__ operand; TYPE_1__* arre; TYPE_1__* arrb; } ;
struct TYPE_13__ {int npos; int allocated; int * pos; } ;
struct TYPE_12__ {int length; scalar_t__ distance; scalar_t__ prefix; } ;
typedef TYPE_2__ QueryOperand ;
typedef TYPE_3__ ExecPhraseData ;
typedef TYPE_4__ CHKVAL ;


 int checkclass_str (TYPE_4__*,TYPE_1__*,TYPE_2__*,TYPE_3__*) ;
 int compareWordEntryPos ;
 int memcpy (int *,int *,int) ;
 int * palloc (int) ;
 int qsort (int *,int,int,int ) ;
 int qunique (int *,int,int,int ) ;
 int * repalloc (int *,int) ;
 int tsCompareString (scalar_t__,int ,scalar_t__,int ,int) ;

__attribute__((used)) static bool
checkcondition_str(void *checkval, QueryOperand *val, ExecPhraseData *data)
{
 CHKVAL *chkval = (CHKVAL *) checkval;
 WordEntry *StopLow = chkval->arrb;
 WordEntry *StopHigh = chkval->arre;
 WordEntry *StopMiddle = StopHigh;
 int difference = -1;
 bool res = 0;


 while (StopLow < StopHigh)
 {
  StopMiddle = StopLow + (StopHigh - StopLow) / 2;
  difference = tsCompareString(chkval->operand + val->distance,
          val->length,
          chkval->values + StopMiddle->pos,
          StopMiddle->len,
          0);

  if (difference == 0)
  {

   res = checkclass_str(chkval, StopMiddle, val, data);
   break;
  }
  else if (difference > 0)
   StopLow = StopMiddle + 1;
  else
   StopHigh = StopMiddle;
 }

 if ((!res || data) && val->prefix)
 {
  WordEntryPos *allpos = ((void*)0);
  int npos = 0,
     totalpos = 0;





  if (StopLow >= StopHigh)
   StopMiddle = StopHigh;

  while ((!res || data) && StopMiddle < chkval->arre &&
      tsCompareString(chkval->operand + val->distance,
          val->length,
          chkval->values + StopMiddle->pos,
          StopMiddle->len,
          1) == 0)
  {
   if (data)
   {



    res = checkclass_str(chkval, StopMiddle, val, data);

    if (res)
    {
     while (npos + data->npos >= totalpos)
     {
      if (totalpos == 0)
      {
       totalpos = 256;
       allpos = palloc(sizeof(WordEntryPos) * totalpos);
      }
      else
      {
       totalpos *= 2;
       allpos = repalloc(allpos, sizeof(WordEntryPos) * totalpos);
      }
     }

     memcpy(allpos + npos, data->pos, sizeof(WordEntryPos) * data->npos);
     npos += data->npos;
    }
   }
   else
   {
    res = checkclass_str(chkval, StopMiddle, val, ((void*)0));
   }

   StopMiddle++;
  }

  if (res && data)
  {

   data->pos = allpos;
   qsort(data->pos, npos, sizeof(WordEntryPos), compareWordEntryPos);
   data->npos = qunique(data->pos, npos, sizeof(WordEntryPos),
         compareWordEntryPos);
   data->allocated = 1;
  }
 }

 return res;
}
