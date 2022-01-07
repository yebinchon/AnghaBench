
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int len; TYPE_1__* words; } ;
typedef TYPE_2__ hlCheck ;
typedef int WordEntryPos ;
struct TYPE_7__ {scalar_t__* pos; int allocated; int npos; } ;
struct TYPE_5__ {scalar_t__ pos; int * item; } ;
typedef int QueryOperand ;
typedef TYPE_3__ ExecPhraseData ;


 scalar_t__* palloc (int) ;

__attribute__((used)) static bool
checkcondition_HL(void *opaque, QueryOperand *val, ExecPhraseData *data)
{
 int i;
 hlCheck *checkval = (hlCheck *) opaque;

 for (i = 0; i < checkval->len; i++)
 {
  if (checkval->words[i].item == val)
  {

   if (!data)
    return 1;

   if (!data->pos)
   {
    data->pos = palloc(sizeof(WordEntryPos) * checkval->len);
    data->allocated = 1;
    data->npos = 1;
    data->pos[0] = checkval->words[i].pos;
   }
   else if (data->pos[data->npos - 1] < checkval->words[i].pos)
   {
    data->pos[data->npos++] = checkval->words[i].pos;
   }
  }
 }

 if (data && data->npos > 0)
  return 1;

 return 0;
}
