
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_16__ {TYPE_3__** Spell; } ;
struct TYPE_15__ {int length; TYPE_4__* data; } ;
struct TYPE_14__ {int isword; scalar_t__ affix; int compoundflag; TYPE_5__* node; int val; } ;
struct TYPE_11__ {int len; scalar_t__ affix; } ;
struct TYPE_12__ {TYPE_1__ d; } ;
struct TYPE_13__ {char* word; TYPE_2__ p; } ;
typedef TYPE_4__ SPNodeData ;
typedef TYPE_5__ SPNode ;
typedef TYPE_6__ IspellDict ;


 int FF_COMPOUNDFLAG ;
 int FF_COMPOUNDONLY ;
 scalar_t__ MergeAffix (TYPE_6__*,scalar_t__,scalar_t__) ;
 scalar_t__ SPNHDRSZ ;
 scalar_t__ cpalloc0 (scalar_t__) ;
 int makeCompoundFlags (TYPE_6__*,scalar_t__) ;

__attribute__((used)) static SPNode *
mkSPNode(IspellDict *Conf, int low, int high, int level)
{
 int i;
 int nchar = 0;
 char lastchar = '\0';
 SPNode *rs;
 SPNodeData *data;
 int lownew = low;

 for (i = low; i < high; i++)
  if (Conf->Spell[i]->p.d.len > level && lastchar != Conf->Spell[i]->word[level])
  {
   nchar++;
   lastchar = Conf->Spell[i]->word[level];
  }

 if (!nchar)
  return ((void*)0);

 rs = (SPNode *) cpalloc0(SPNHDRSZ + nchar * sizeof(SPNodeData));
 rs->length = nchar;
 data = rs->data;

 lastchar = '\0';
 for (i = low; i < high; i++)
  if (Conf->Spell[i]->p.d.len > level)
  {
   if (lastchar != Conf->Spell[i]->word[level])
   {
    if (lastchar)
    {

     data->node = mkSPNode(Conf, lownew, i, level + 1);
     lownew = i;
     data++;
    }
    lastchar = Conf->Spell[i]->word[level];
   }
   data->val = ((uint8 *) (Conf->Spell[i]->word))[level];
   if (Conf->Spell[i]->p.d.len == level + 1)
   {
    bool clearCompoundOnly = 0;

    if (data->isword && data->affix != Conf->Spell[i]->p.d.affix)
    {






     clearCompoundOnly = (FF_COMPOUNDONLY & data->compoundflag
           & makeCompoundFlags(Conf, Conf->Spell[i]->p.d.affix))
      ? 0 : 1;
     data->affix = MergeAffix(Conf, data->affix, Conf->Spell[i]->p.d.affix);
    }
    else
     data->affix = Conf->Spell[i]->p.d.affix;
    data->isword = 1;

    data->compoundflag = makeCompoundFlags(Conf, data->affix);

    if ((data->compoundflag & FF_COMPOUNDONLY) &&
     (data->compoundflag & FF_COMPOUNDFLAG) == 0)
     data->compoundflag |= FF_COMPOUNDFLAG;

    if (clearCompoundOnly)
     data->compoundflag &= ~FF_COMPOUNDONLY;
   }
  }


 data->node = mkSPNode(Conf, lownew, high, level + 1);

 return rs;
}
