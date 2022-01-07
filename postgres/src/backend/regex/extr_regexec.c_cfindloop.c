
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vars {int err; scalar_t__ nmatch; TYPE_2__* pmatch; TYPE_1__* g; int * stop; int * search_start; } ;
struct dfa {int dummy; } ;
struct colormap {int dummy; } ;
struct cnfa {int dummy; } ;
typedef int chr ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {void* rm_eo; void* rm_so; } ;
struct TYPE_4__ {TYPE_3__* tree; } ;


 int ERR (int) ;
 scalar_t__ ISERR () ;
 int LOFF (int *) ;
 int MDEBUG (char*) ;
 void* OFF (int *) ;
 int REG_NOMATCH ;
 int REG_OKAY ;
 int SHORTER ;
 int assert (int) ;
 int cdissect (struct vars*,TYPE_3__*,int *,int *) ;
 int * longest (struct vars*,struct dfa*,int *,int *,int*) ;
 int * shortest (struct vars*,struct dfa*,int *,int *,int *,int **,int*) ;
 int zapallsubs (TYPE_2__*,scalar_t__) ;

__attribute__((used)) static int
cfindloop(struct vars *v,
    struct cnfa *cnfa,
    struct colormap *cm,
    struct dfa *d,
    struct dfa *s,
    chr **coldp)
{
 chr *begin;
 chr *end;
 chr *cold;
 chr *open;
 chr *close;
 chr *estart;
 chr *estop;
 int er;
 int shorter = v->g->tree->flags & SHORTER;
 int hitend;

 assert(d != ((void*)0) && s != ((void*)0));
 cold = ((void*)0);
 close = v->search_start;
 do
 {

  MDEBUG(("\ncsearch at %ld\n", LOFF(close)));
  close = shortest(v, s, close, close, v->stop, &cold, (int *) ((void*)0));
  if (ISERR())
  {
   *coldp = cold;
   return v->err;
  }
  if (close == ((void*)0))
   break;
  assert(cold != ((void*)0));
  open = cold;
  cold = ((void*)0);

  MDEBUG(("cbetween %ld and %ld\n", LOFF(open), LOFF(close)));
  for (begin = open; begin <= close; begin++)
  {
   MDEBUG(("\ncfind trying at %ld\n", LOFF(begin)));
   estart = begin;
   estop = v->stop;
   for (;;)
   {

    if (shorter)
     end = shortest(v, d, begin, estart,
           estop, (chr **) ((void*)0), &hitend);
    else
     end = longest(v, d, begin, estop,
          &hitend);
    if (ISERR())
    {
     *coldp = cold;
     return v->err;
    }
    if (hitend && cold == ((void*)0))
     cold = begin;
    if (end == ((void*)0))
     break;
    MDEBUG(("tentative end %ld\n", LOFF(end)));

    zapallsubs(v->pmatch, v->nmatch);
    er = cdissect(v, v->g->tree, begin, end);
    if (er == REG_OKAY)
    {
     if (v->nmatch > 0)
     {
      v->pmatch[0].rm_so = OFF(begin);
      v->pmatch[0].rm_eo = OFF(end);
     }
     *coldp = cold;
     return REG_OKAY;
    }
    if (er != REG_NOMATCH)
    {
     ERR(er);
     *coldp = cold;
     return er;
    }

    if (shorter)
    {
     if (end == estop)
      break;
     estart = end + 1;
    }
    else
    {
     if (end == begin)
      break;
     estop = end - 1;
    }
   }
  }






  close++;
 } while (close < v->stop);

 *coldp = cold;
 return REG_NOMATCH;
}
