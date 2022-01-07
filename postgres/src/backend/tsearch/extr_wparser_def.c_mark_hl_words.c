
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int curwords; TYPE_1__* words; } ;
struct TYPE_5__ {int len; int selected; int replace; int skip; int in; scalar_t__ repeated; int type; scalar_t__ item; } ;
typedef int TSQuery ;
typedef TYPE_2__ HeadlineParsedText ;


 scalar_t__ HLIDREPLACE (int ) ;
 scalar_t__ HLIDSKIP (int ) ;
 scalar_t__ NOENDTOKEN (int ) ;
 int NONWORDTOKEN (int ) ;
 scalar_t__ XMLHLIDSKIP (int ) ;
 scalar_t__ hlCover (TYPE_2__*,int ,int*,int*) ;

__attribute__((used)) static void
mark_hl_words(HeadlineParsedText *prs, TSQuery query, int highlight,
     int shortword, int min_words, int max_words)
{
 int p = 0,
    q = 0;
 int bestb = -1,
    beste = -1;
 int bestlen = -1;
 int pose = 0,
    posb,
    poslen,
    curlen;

 int i;

 if (highlight == 0)
 {
  while (hlCover(prs, query, &p, &q))
  {

   curlen = 0;
   poslen = 0;
   for (i = p; i <= q && curlen < max_words; i++)
   {
    if (!NONWORDTOKEN(prs->words[i].type))
     curlen++;
    if (prs->words[i].item && !prs->words[i].repeated)
     poslen++;
    pose = i;
   }

   if (poslen < bestlen && !(NOENDTOKEN(prs->words[beste].type) || prs->words[beste].len <= shortword))
   {

    p++;
    continue;
   }

   posb = p;
   if (curlen < max_words)
   {
    for (i = i - 1; i < prs->curwords && curlen < max_words; i++)
    {
     if (i != q)
     {
      if (!NONWORDTOKEN(prs->words[i].type))
       curlen++;
      if (prs->words[i].item && !prs->words[i].repeated)
       poslen++;
     }
     pose = i;
     if (NOENDTOKEN(prs->words[i].type) || prs->words[i].len <= shortword)
      continue;
     if (curlen >= min_words)
      break;
    }
    if (curlen < min_words && i >= prs->curwords)
    {

     for (i = p - 1; i >= 0; i--)
     {
      if (!NONWORDTOKEN(prs->words[i].type))
       curlen++;
      if (prs->words[i].item && !prs->words[i].repeated)
       poslen++;
      if (curlen >= max_words)
       break;
      if (NOENDTOKEN(prs->words[i].type) || prs->words[i].len <= shortword)
       continue;
      if (curlen >= min_words)
       break;
     }
     posb = (i >= 0) ? i : 0;
    }
   }
   else
   {
    if (i > q)
     i = q;
    for (; curlen > min_words; i--)
    {
     if (!NONWORDTOKEN(prs->words[i].type))
      curlen--;
     if (prs->words[i].item && !prs->words[i].repeated)
      poslen--;
     pose = i;
     if (NOENDTOKEN(prs->words[i].type) || prs->words[i].len <= shortword)
      continue;
     break;
    }
   }

   if (bestlen < 0 || (poslen > bestlen && !(NOENDTOKEN(prs->words[pose].type) || prs->words[pose].len <= shortword)) ||
    (bestlen >= 0 && !(NOENDTOKEN(prs->words[pose].type) || prs->words[pose].len <= shortword) &&
     (NOENDTOKEN(prs->words[beste].type) || prs->words[beste].len <= shortword)))
   {
    bestb = posb;
    beste = pose;
    bestlen = poslen;
   }

   p++;
  }

  if (bestlen < 0)
  {
   curlen = 0;
   for (i = 0; i < prs->curwords && curlen < min_words; i++)
   {
    if (!NONWORDTOKEN(prs->words[i].type))
     curlen++;
    pose = i;
   }
   bestb = 0;
   beste = pose;
  }
 }
 else
 {
  bestb = 0;
  beste = prs->curwords - 1;
 }

 for (i = bestb; i <= beste; i++)
 {
  if (prs->words[i].item)
   prs->words[i].selected = 1;
  if (highlight == 0)
  {
   if (HLIDREPLACE(prs->words[i].type))
    prs->words[i].replace = 1;
   else if (HLIDSKIP(prs->words[i].type))
    prs->words[i].skip = 1;
  }
  else
  {
   if (XMLHLIDSKIP(prs->words[i].type))
    prs->words[i].skip = 1;
  }

  prs->words[i].in = (prs->words[i].repeated) ? 0 : 1;
 }

}
