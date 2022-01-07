
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_14__ {int startpos; int endpos; int curlen; int poslen; int in; int excluded; } ;
struct TYPE_13__ {int curwords; TYPE_1__* words; } ;
struct TYPE_12__ {int len; int type; int in; } ;
typedef int TSQuery ;
typedef TYPE_2__ HeadlineParsedText ;
typedef TYPE_3__ CoverPos ;


 scalar_t__ NOENDTOKEN (int ) ;
 int NONWORDTOKEN (int ) ;
 int PG_INT32_MAX ;
 int get_next_fragment (TYPE_2__*,int*,int*,int*,int*,int) ;
 scalar_t__ hlCover (TYPE_2__*,int ,int*,int*) ;
 int mark_fragment (TYPE_2__*,int,int,int) ;
 TYPE_3__* palloc (int) ;
 int pfree (TYPE_3__*) ;
 TYPE_3__* repalloc (TYPE_3__*,int) ;

__attribute__((used)) static void
mark_hl_fragments(HeadlineParsedText *prs, TSQuery query, int highlight,
      int shortword, int min_words,
      int max_words, int max_fragments)
{
 int32 poslen,
    curlen,
    i,
    f,
    num_f = 0;
 int32 stretch,
    maxstretch,
    posmarker;

 int32 startpos = 0,
    endpos = 0,
    p = 0,
    q = 0;

 int32 numcovers = 0,
    maxcovers = 32;

 int32 minI,
    minwords,
    maxitems;
 CoverPos *covers;

 covers = palloc(maxcovers * sizeof(CoverPos));


 while (hlCover(prs, query, &p, &q))
 {
  startpos = p;
  endpos = q;
  while (startpos <= endpos)
  {
   get_next_fragment(prs, &startpos, &endpos, &curlen, &poslen, max_words);
   if (numcovers >= maxcovers)
   {
    maxcovers *= 2;
    covers = repalloc(covers, sizeof(CoverPos) * maxcovers);
   }
   covers[numcovers].startpos = startpos;
   covers[numcovers].endpos = endpos;
   covers[numcovers].curlen = curlen;
   covers[numcovers].poslen = poslen;
   covers[numcovers].in = 0;
   covers[numcovers].excluded = 0;
   numcovers++;
   startpos = endpos + 1;
   endpos = q;
  }

  p++;
 }


 for (f = 0; f < max_fragments; f++)
 {
  maxitems = 0;
  minwords = PG_INT32_MAX;
  minI = -1;





  for (i = 0; i < numcovers; i++)
  {
   if (!covers[i].in && !covers[i].excluded &&
    (maxitems < covers[i].poslen || (maxitems == covers[i].poslen
             && minwords > covers[i].curlen)))
   {
    maxitems = covers[i].poslen;
    minwords = covers[i].curlen;
    minI = i;
   }
  }

  if (minI >= 0)
  {
   covers[minI].in = 1;

   startpos = covers[minI].startpos;
   endpos = covers[minI].endpos;
   curlen = covers[minI].curlen;

   if (curlen < max_words)
   {

    maxstretch = (max_words - curlen) / 2;






    stretch = 0;
    posmarker = startpos;
    for (i = startpos - 1; i >= 0 && stretch < maxstretch && !prs->words[i].in; i--)
    {
     if (!NONWORDTOKEN(prs->words[i].type))
     {
      curlen++;
      stretch++;
     }
     posmarker = i;
    }

    for (i = posmarker; i < startpos && (NOENDTOKEN(prs->words[i].type) || prs->words[i].len <= shortword); i++)
    {
     if (!NONWORDTOKEN(prs->words[i].type))
      curlen--;
    }
    startpos = i;

    posmarker = endpos;
    for (i = endpos + 1; i < prs->curwords && curlen < max_words && !prs->words[i].in; i++)
    {
     if (!NONWORDTOKEN(prs->words[i].type))
      curlen++;
     posmarker = i;
    }

    for (i = posmarker; i > endpos && (NOENDTOKEN(prs->words[i].type) || prs->words[i].len <= shortword); i--)
    {
     if (!NONWORDTOKEN(prs->words[i].type))
      curlen--;
    }
    endpos = i;
   }
   covers[minI].startpos = startpos;
   covers[minI].endpos = endpos;
   covers[minI].curlen = curlen;

   mark_fragment(prs, highlight, startpos, endpos);
   num_f++;

   for (i = 0; i < numcovers; i++)
   {
    if (i != minI && ((covers[i].startpos >= covers[minI].startpos && covers[i].startpos <= covers[minI].endpos) || (covers[i].endpos >= covers[minI].startpos && covers[i].endpos <= covers[minI].endpos)))
     covers[i].excluded = 1;
   }
  }
  else
   break;
 }


 if (num_f <= 0)
 {
  startpos = endpos = curlen = 0;
  for (i = 0; i < prs->curwords && curlen < min_words; i++)
  {
   if (!NONWORDTOKEN(prs->words[i].type))
    curlen++;
   endpos = i;
  }
  mark_fragment(prs, highlight, startpos, endpos);
 }
 pfree(covers);
}
