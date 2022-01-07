
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int long_u ;
struct TYPE_5__ {struct TYPE_5__* hisstr; } ;
typedef TYPE_1__ histentry_T ;


 int HIST_COUNT ;
 int TRUE ;
 int clear_hist_entry (TYPE_1__*) ;
 int* hisidx ;
 int hislen ;
 TYPE_1__** history ;
 scalar_t__ lalloc (int ,int ) ;
 scalar_t__ p_hi ;
 int vim_free (TYPE_1__*) ;

void
init_history()
{
    int newlen;
    histentry_T *temp;
    int i;
    int j;
    int type;




    newlen = (int)p_hi;
    if (newlen != hislen)
    {
 for (type = 0; type < HIST_COUNT; ++type)
 {
     if (newlen)
     {
  temp = (histentry_T *)lalloc(
    (long_u)(newlen * sizeof(histentry_T)), TRUE);
  if (temp == ((void*)0))
  {
      if (type == 0)
      {
   newlen = hislen;
   break;
      }


      newlen = 0;
      type = -1;
      continue;
  }
     }
     else
  temp = ((void*)0);
     if (newlen == 0 || temp != ((void*)0))
     {
  if (hisidx[type] < 0)
  {
      for (i = 0; i < newlen; ++i)
   clear_hist_entry(&temp[i]);
  }
  else if (newlen > hislen)
  {
      for (i = 0; i <= hisidx[type]; ++i)
   temp[i] = history[type][i];
      j = i;
      for ( ; i <= newlen - (hislen - hisidx[type]); ++i)
   clear_hist_entry(&temp[i]);
      for ( ; j < hislen; ++i, ++j)
   temp[i] = history[type][j];
  }
  else
  {
      j = hisidx[type];
      for (i = newlen - 1; ; --i)
      {
   if (i >= 0)
       temp[i] = history[type][j];
   else
       vim_free(history[type][j].hisstr);
   if (--j < 0)
       j = hislen - 1;
   if (j == hisidx[type])
       break;
      }
      hisidx[type] = newlen - 1;
  }
  vim_free(history[type]);
  history[type] = temp;
     }
 }
 hislen = newlen;
    }
}
