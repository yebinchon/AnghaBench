
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct colormap {TYPE_1__* cd; } ;
struct cnfa {int pre; scalar_t__* bos; scalar_t__* eos; scalar_t__ ncolors; int post; struct carc** states; } ;
struct carc {scalar_t__ co; int to; } ;
typedef scalar_t__ color ;
typedef int chr ;
struct TYPE_2__ {int nschrs; scalar_t__ nuchrs; int firstchr; } ;


 scalar_t__ COLORLESS ;
 scalar_t__ GETCOLOR (struct colormap*,int ) ;
 int REG_EXACT ;
 int REG_NOMATCH ;
 int REG_PREFIX ;

__attribute__((used)) static int
findprefix(struct cnfa *cnfa,
     struct colormap *cm,
     chr *string,
     size_t *slength)
{
 int st;
 int nextst;
 color thiscolor;
 chr c;
 struct carc *ca;






 st = cnfa->pre;
 nextst = -1;
 for (ca = cnfa->states[st]; ca->co != COLORLESS; ca++)
 {
  if (ca->co == cnfa->bos[0] || ca->co == cnfa->bos[1])
  {
   if (nextst == -1)
    nextst = ca->to;
   else if (nextst != ca->to)
    return REG_NOMATCH;
  }
  else
   return REG_NOMATCH;
 }
 if (nextst == -1)
  return REG_NOMATCH;
 do
 {
  st = nextst;
  nextst = -1;
  thiscolor = COLORLESS;
  for (ca = cnfa->states[st]; ca->co != COLORLESS; ca++)
  {

   if (ca->co == cnfa->bos[0] || ca->co == cnfa->bos[1])
    continue;

   if (ca->co == cnfa->eos[0] || ca->co == cnfa->eos[1] ||
    ca->co >= cnfa->ncolors)
   {
    thiscolor = COLORLESS;
    break;
   }
   if (thiscolor == COLORLESS)
   {

    thiscolor = ca->co;
    nextst = ca->to;
   }
   else if (thiscolor == ca->co)
   {

    nextst = -1;
   }
   else
   {

    thiscolor = COLORLESS;
    break;
   }
  }

  if (thiscolor == COLORLESS)
   break;

  if (cm->cd[thiscolor].nschrs != 1)
   break;

  if (cm->cd[thiscolor].nuchrs != 0)
   break;
  c = cm->cd[thiscolor].firstchr;
  if (GETCOLOR(cm, c) != thiscolor)
   break;

  string[(*slength)++] = c;


 } while (nextst != -1);






 nextst = -1;
 for (ca = cnfa->states[st]; ca->co != COLORLESS; ca++)
 {
  if (ca->co == cnfa->eos[0] || ca->co == cnfa->eos[1])
  {
   if (nextst == -1)
    nextst = ca->to;
   else if (nextst != ca->to)
   {
    nextst = -1;
    break;
   }
  }
  else
  {
   nextst = -1;
   break;
  }
 }
 if (nextst == cnfa->post)
  return REG_EXACT;






 if (*slength > 0)
  return REG_PREFIX;

 return REG_NOMATCH;
}
