
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int float4 ;
struct TYPE_11__ {double frequency; int element; } ;
typedef TYPE_2__ TextFreq ;
struct TYPE_14__ {char* lexeme; int length; } ;
struct TYPE_10__ {int oper; int left; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_1__ qoperator; } ;
struct TYPE_12__ {int distance; int length; scalar_t__ prefix; } ;
typedef double Selectivity ;
typedef TYPE_3__ QueryOperand ;
typedef TYPE_4__ QueryItem ;
typedef TYPE_5__ LexemeKey ;


 int CLAMP_PROBABILITY (double) ;
 int DEFAULT_TS_MATCH_SEL ;
 int ERROR ;
 double Max (double,double) ;
 double Min (int,int) ;




 scalar_t__ QI_VAL ;
 int VARDATA_ANY (int ) ;
 int VARSIZE_ANY_EXHDR (int ) ;
 scalar_t__ bsearch (TYPE_5__*,TYPE_2__*,int,int,int ) ;
 int check_stack_depth () ;
 int compare_lexeme_textfreq ;
 int elog (int ,char*,int) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static Selectivity
tsquery_opr_selec(QueryItem *item, char *operand,
      TextFreq *lookup, int length, float4 minfreq)
{
 Selectivity selec;


 check_stack_depth();

 if (item->type == QI_VAL)
 {
  QueryOperand *oper = (QueryOperand *) item;
  LexemeKey key;




  key.lexeme = operand + oper->distance;
  key.length = oper->length;

  if (oper->prefix)
  {

   Selectivity matched,
      allmces;
   int i,
      n_matched;
   if (lookup == ((void*)0) || length < 100)
    return (Selectivity) (DEFAULT_TS_MATCH_SEL * 4);

   matched = allmces = 0;
   n_matched = 0;
   for (i = 0; i < length; i++)
   {
    TextFreq *t = lookup + i;
    int tlen = VARSIZE_ANY_EXHDR(t->element);

    if (tlen >= key.length &&
     strncmp(key.lexeme, VARDATA_ANY(t->element),
       key.length) == 0)
    {
     matched += t->frequency - matched * t->frequency;
     n_matched++;
    }
    allmces += t->frequency - allmces * t->frequency;
   }


   CLAMP_PROBABILITY(matched);
   CLAMP_PROBABILITY(allmces);

   selec = matched + (1.0 - allmces) * ((double) n_matched / length);







   selec = Max(Min(DEFAULT_TS_MATCH_SEL, minfreq / 2), selec);
  }
  else
  {

   TextFreq *searchres;


   if (lookup == ((void*)0))
    return (Selectivity) DEFAULT_TS_MATCH_SEL;

   searchres = (TextFreq *) bsearch(&key, lookup, length,
            sizeof(TextFreq),
            compare_lexeme_textfreq);

   if (searchres)
   {




    selec = searchres->frequency;
   }
   else
   {




    selec = Min(DEFAULT_TS_MATCH_SEL, minfreq / 2);
   }
  }
 }
 else
 {

  Selectivity s1,
     s2;

  switch (item->qoperator.oper)
  {
   case 130:
    selec = 1.0 - tsquery_opr_selec(item + 1, operand,
            lookup, length, minfreq);
    break;

   case 128:
   case 131:
    s1 = tsquery_opr_selec(item + 1, operand,
            lookup, length, minfreq);
    s2 = tsquery_opr_selec(item + item->qoperator.left, operand,
            lookup, length, minfreq);
    selec = s1 * s2;
    break;

   case 129:
    s1 = tsquery_opr_selec(item + 1, operand,
            lookup, length, minfreq);
    s2 = tsquery_opr_selec(item + item->qoperator.left, operand,
            lookup, length, minfreq);
    selec = s1 + s2 - s1 * s2;
    break;

   default:
    elog(ERROR, "unrecognized operator: %d", item->qoperator.oper);
    selec = 0;
    break;
  }
 }


 CLAMP_PROBABILITY(selec);

 return selec;
}
