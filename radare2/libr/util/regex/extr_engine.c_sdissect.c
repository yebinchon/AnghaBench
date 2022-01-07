
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct match {int offp; TYPE_2__* pmatch; TYPE_1__* g; } ;
typedef size_t sopno ;
struct TYPE_4__ {char* rm_so; char* rm_eo; } ;
struct TYPE_3__ {int nsub; int * strip; } ;


 int AT (char*,char*,char*,size_t,size_t) ;
 int OP (int ) ;

 size_t OPND (int ) ;






 char* slow (struct match*,char*,char*,size_t,size_t) ;

__attribute__((used)) static char *
dissect(struct match *m, char *start, char *stop, sopno startst, sopno stopst)
{
 int i;
 sopno ss;
 sopno es;
 char *sp;
 char *stp;
 char *rest;
 char *tail;
 sopno ssub;
 sopno esub;
 char *ssp;
 char *sep;
 char *oldssp;
 char *dp;

 AT("diss", start, stop, startst, stopst);
 sp = start;
 for (ss = startst; ss < stopst; ss = es) {

  es = ss;
  switch (OP(m->g->strip[es])) {
  case 134:
  case 133:
   es += OPND(m->g->strip[es]);
   break;
  case 141:
   while (OP(m->g->strip[es]) != 130)
    es += OPND(m->g->strip[es]);
   break;
  }
  es++;


  switch (OP(m->g->strip[ss])) {
  case 140:
   break;
  case 142:
   sp++;
   break;
  case 144:
  case 139:
  case 143:
  case 138:
   break;
  case 147:
  case 146:
   sp++;
   break;
  case 145:
  case 131:
   break;

  case 133:
   stp = stop;
   for (;;) {

    rest = slow(m, sp, stp, ss, es);
    if (rest) {

     tail = slow(m, rest, stop, es, stopst);
     if (tail == stop)
      break;

     stp = rest - 1;
    }
   }
   ssub = ss + 1;
   esub = es - 1;

   if (slow(m, sp, rest, ssub, esub) != ((void*)0)) {
    dp = dissect(m, sp, rest, ssub, esub);
    if (dp != rest) return ((void*)0);
   } else if (sp != rest) return ((void*)0);
   sp = rest;
   break;
  case 134:
   stp = stop;
   for (;;) {

    rest = slow(m, sp, stp, ss, es);
    if (rest != ((void*)0)) {

     tail = slow(m, rest, stop, es, stopst);
     if (tail == stop)
      break;

     stp = rest - 1;
    }
   }
   ssub = ss + 1;
   esub = es - 1;
   ssp = sp;
   oldssp = ssp;
   for (;;) {
    sep = slow(m, ssp, rest, ssub, esub);
    if (!sep || sep == ssp)
     break;
    oldssp = ssp;
    ssp = sep;
   }
   if (!sep) {

    sep = ssp;
    ssp = oldssp;
   }
   if (sep == rest) {
    if (slow(m, ssp, sep, ssub, esub) == rest) {
     dp = dissect(m, ssp, sep, ssub, esub);
     if (dp == sep) {
      sp = rest;
     }
    }
   }
   break;
  case 141:
   stp = stop;
   for (;;) {

    rest = slow(m, sp, stp, ss, es);
    if (rest) {

     tail = slow(m, rest, stop, es, stopst);
     if (tail == stop)
      break;

     stp = rest - 1;
    }
   }
   ssub = ss + 1;
   esub = ss + OPND(m->g->strip[ss]) - 1;
   if (OP(m->g->strip[esub]) != 136) {
    break;
   }
   for (;;) {
    if (slow(m, sp, rest, ssub, esub) == rest)
     break;

    if (OP(m->g->strip[esub]) == 136) {
     esub++;
     if (OP(m->g->strip[esub]) == 135) {
      ssub = esub + 1;
      esub += OPND(m->g->strip[esub]);
      if (OP(m->g->strip[esub]) == 135) {
       esub--;
      } else {
       if (OP(m->g->strip[esub]) != 130) {
        break;
       }
      }
     }
    }
   }
   dp = dissect(m, sp, rest, ssub, esub);
   if (dp == rest) {
    sp = rest;
   }
   break;
  case 129:
  case 128:
  case 136:
  case 135:
  case 130:
   break;
  case 137:
   i = OPND(m->g->strip[ss]);
   if (i > 0 && i <= m->g->nsub) {
    m->pmatch[i].rm_so = sp - m->offp;
   }
   break;
  case 132:
   i = OPND(m->g->strip[ss]);
   if (i > 0 && i <= m->g->nsub) {
    m->pmatch[i].rm_eo = sp - m->offp;
   }
   break;
  default:
   break;
  }
 }

 if (sp == stop) {
  return sp;
 } else {
  return ((void*)0);
 }
}
