
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* words; } ;
struct TYPE_4__ {int type; int repeated; scalar_t__ item; } ;
typedef TYPE_2__ HeadlineParsedText ;


 int NONWORDTOKEN (int ) ;

__attribute__((used)) static void
get_next_fragment(HeadlineParsedText *prs, int *startpos, int *endpos,
      int *curlen, int *poslen, int max_words)
{
 int i;
 for (i = *startpos; i <= *endpos; i++)
 {
  *startpos = i;
  if (prs->words[i].item && !prs->words[i].repeated)
   break;
 }

 *curlen = 0;
 *poslen = 0;
 for (i = *startpos; i <= *endpos && *curlen < max_words; i++)
 {
  if (!NONWORDTOKEN(prs->words[i].type))
   *curlen += 1;
  if (prs->words[i].item && !prs->words[i].repeated)
   *poslen += 1;
 }

 if (*endpos > i)
 {
  *endpos = i;
  for (i = *endpos; i >= *startpos; i--)
  {
   *endpos = i;
   if (prs->words[i].item && !prs->words[i].repeated)
    break;
   if (!NONWORDTOKEN(prs->words[i].type))
    *curlen -= 1;
  }
 }
}
