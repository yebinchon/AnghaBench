
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WordEntryPos ;
struct TYPE_5__ {int npos; int* pos; int allocated; } ;
typedef TYPE_1__ ExecPhraseData ;


 int Assert (int) ;
 int INT_MAX ;
 int TSPO_BOTH ;
 int TSPO_L_ONLY ;
 int TSPO_R_ONLY ;
 int WEP_GETPOS (int) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static bool
TS_phrase_output(ExecPhraseData *data,
     ExecPhraseData *Ldata,
     ExecPhraseData *Rdata,
     int emit,
     int Loffset,
     int Roffset,
     int max_npos)
{
 int Lindex,
    Rindex;


 Lindex = Rindex = 0;
 while (Lindex < Ldata->npos || Rindex < Rdata->npos)
 {
  int Lpos,
     Rpos;
  int output_pos = 0;





  if (Lindex < Ldata->npos)
   Lpos = WEP_GETPOS(Ldata->pos[Lindex]) + Loffset;
  else
  {

   if (!(emit & TSPO_R_ONLY))
    break;
   Lpos = INT_MAX;
  }
  if (Rindex < Rdata->npos)
   Rpos = WEP_GETPOS(Rdata->pos[Rindex]) + Roffset;
  else
  {

   if (!(emit & TSPO_L_ONLY))
    break;
   Rpos = INT_MAX;
  }


  if (Lpos < Rpos)
  {

   if (emit & TSPO_L_ONLY)
    output_pos = Lpos;
   Lindex++;
  }
  else if (Lpos == Rpos)
  {

   if (emit & TSPO_BOTH)
    output_pos = Rpos;
   Lindex++;
   Rindex++;
  }
  else
  {

   if (emit & TSPO_R_ONLY)
    output_pos = Rpos;
   Rindex++;
  }

  if (output_pos > 0)
  {
   if (data)
   {

    if (data->pos == ((void*)0))
    {
     data->pos = (WordEntryPos *)
      palloc(max_npos * sizeof(WordEntryPos));
     data->allocated = 1;
    }
    data->pos[data->npos++] = output_pos;
   }
   else
   {




    return 1;
   }
  }
 }

 if (data && data->npos > 0)
 {

  Assert(data->npos <= max_npos);
  return 1;
 }
 return 0;
}
