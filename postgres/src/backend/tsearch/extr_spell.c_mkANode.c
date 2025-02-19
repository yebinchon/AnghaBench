
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char uint8 ;
struct TYPE_14__ {int replen; } ;
struct TYPE_13__ {int length; TYPE_2__* data; } ;
struct TYPE_12__ {int naff; char val; TYPE_4__** aff; TYPE_3__* node; } ;
struct TYPE_11__ {TYPE_4__* Affix; } ;
typedef TYPE_1__ IspellDict ;
typedef TYPE_2__ AffixNodeData ;
typedef TYPE_3__ AffixNode ;
typedef TYPE_4__ AFFIX ;


 scalar_t__ ANHRDSZ ;
 char GETCHAR (TYPE_4__*,int,int) ;
 scalar_t__ cpalloc (int) ;
 scalar_t__ cpalloc0 (scalar_t__) ;
 int memcpy (TYPE_4__**,TYPE_4__**,int) ;
 int pfree (TYPE_4__**) ;
 scalar_t__ tmpalloc (int) ;

__attribute__((used)) static AffixNode *
mkANode(IspellDict *Conf, int low, int high, int level, int type)
{
 int i;
 int nchar = 0;
 uint8 lastchar = '\0';
 AffixNode *rs;
 AffixNodeData *data;
 int lownew = low;
 int naff;
 AFFIX **aff;

 for (i = low; i < high; i++)
  if (Conf->Affix[i].replen > level && lastchar != GETCHAR(Conf->Affix + i, level, type))
  {
   nchar++;
   lastchar = GETCHAR(Conf->Affix + i, level, type);
  }

 if (!nchar)
  return ((void*)0);

 aff = (AFFIX **) tmpalloc(sizeof(AFFIX *) * (high - low + 1));
 naff = 0;

 rs = (AffixNode *) cpalloc0(ANHRDSZ + nchar * sizeof(AffixNodeData));
 rs->length = nchar;
 data = rs->data;

 lastchar = '\0';
 for (i = low; i < high; i++)
  if (Conf->Affix[i].replen > level)
  {
   if (lastchar != GETCHAR(Conf->Affix + i, level, type))
   {
    if (lastchar)
    {

     data->node = mkANode(Conf, lownew, i, level + 1, type);
     if (naff)
     {
      data->naff = naff;
      data->aff = (AFFIX **) cpalloc(sizeof(AFFIX *) * naff);
      memcpy(data->aff, aff, sizeof(AFFIX *) * naff);
      naff = 0;
     }
     data++;
     lownew = i;
    }
    lastchar = GETCHAR(Conf->Affix + i, level, type);
   }
   data->val = GETCHAR(Conf->Affix + i, level, type);
   if (Conf->Affix[i].replen == level + 1)
   {
    aff[naff++] = Conf->Affix + i;
   }
  }


 data->node = mkANode(Conf, lownew, high, level + 1, type);
 if (naff)
 {
  data->naff = naff;
  data->aff = (AFFIX **) cpalloc(sizeof(AFFIX *) * naff);
  memcpy(data->aff, aff, sizeof(AFFIX *) * naff);
  naff = 0;
 }

 pfree(aff);

 return rs;
}
