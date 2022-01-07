
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vars {int err; } ;
struct subre {char op; int min; size_t max; int id; TYPE_2__* left; } ;
struct dfa {int dummy; } ;
typedef int chr ;
struct TYPE_5__ {scalar_t__ nstates; } ;
struct TYPE_6__ {int flags; TYPE_1__ cnfa; } ;


 size_t DUPINF ;
 int FREE (int **) ;
 scalar_t__ ISERR () ;
 int LOFF (int *) ;
 scalar_t__ MALLOC (size_t) ;
 int MDEBUG (char*) ;
 int REG_ESPACE ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int SHORTER ;
 int assert (int) ;
 int cdissect (struct vars*,TYPE_2__*,int *,int *) ;
 struct dfa* getsubdfa (struct vars*,TYPE_2__*) ;
 int * longest (struct vars*,struct dfa*,int *,int *,int*) ;
 int zaptreesubs (struct vars*,TYPE_2__*) ;

__attribute__((used)) static int
citerdissect(struct vars *v,
    struct subre *t,
    chr *begin,
    chr *end)
{
 struct dfa *d;
 chr **endpts;
 chr *limit;
 int min_matches;
 size_t max_matches;
 int nverified;
 int k;
 int i;
 int er;

 assert(t->op == '*');
 assert(t->left != ((void*)0) && t->left->cnfa.nstates > 0);
 assert(!(t->left->flags & SHORTER));
 assert(begin <= end);
 min_matches = t->min;
 if (min_matches <= 0)
  min_matches = 1;
 max_matches = end - begin;
 if (max_matches > t->max && t->max != DUPINF)
  max_matches = t->max;
 if (max_matches < min_matches)
  max_matches = min_matches;
 endpts = (chr **) MALLOC((max_matches + 1) * sizeof(chr *));
 if (endpts == ((void*)0))
  return REG_ESPACE;
 endpts[0] = begin;

 d = getsubdfa(v, t->left);
 if (ISERR())
 {
  FREE(endpts);
  return v->err;
 }
 MDEBUG(("citer %d\n", t->id));
 nverified = 0;
 k = 1;
 limit = end;


 while (k > 0)
 {

  endpts[k] = longest(v, d, endpts[k - 1], limit, (int *) ((void*)0));
  if (ISERR())
  {
   FREE(endpts);
   return v->err;
  }
  if (endpts[k] == ((void*)0))
  {

   k--;
   goto backtrack;
  }
  MDEBUG(("%d: working endpoint %d: %ld\n",
    t->id, k, LOFF(endpts[k])));


  if (nverified >= k)
   nverified = k - 1;

  if (endpts[k] != end)
  {

   if (k >= max_matches)
   {

    k--;
    goto backtrack;
   }


   if (endpts[k] == endpts[k - 1] &&
    (k >= min_matches || min_matches - k < end - endpts[k]))
    goto backtrack;

   k++;
   limit = end;
   continue;
  }







  if (k < min_matches)
   goto backtrack;

  MDEBUG(("%d: verifying %d..%d\n", t->id, nverified + 1, k));

  for (i = nverified + 1; i <= k; i++)
  {
   zaptreesubs(v, t->left);
   er = cdissect(v, t->left, endpts[i - 1], endpts[i]);
   if (er == REG_OKAY)
   {
    nverified = i;
    continue;
   }
   if (er == REG_NOMATCH)
    break;

   FREE(endpts);
   return er;
  }

  if (i > k)
  {

   MDEBUG(("%d successful\n", t->id));
   FREE(endpts);
   return REG_OKAY;
  }



backtrack:





  while (k > 0)
  {
   chr *prev_end = endpts[k - 1];

   if (endpts[k] > prev_end)
   {
    limit = endpts[k] - 1;
    if (limit > prev_end ||
     (k < min_matches && min_matches - k >= end - prev_end))
    {

     break;
    }
   }

   k--;
  }
 }


 FREE(endpts);





 if (t->min == 0 && begin == end)
 {
  MDEBUG(("%d allowing zero matches\n", t->id));
  return REG_OKAY;
 }

 MDEBUG(("%d failed\n", t->id));
 return REG_NOMATCH;
}
