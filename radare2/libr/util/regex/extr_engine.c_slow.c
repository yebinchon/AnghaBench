
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct match {char* beginp; char* endp; int eflags; TYPE_1__* g; int tmp; int empty; int st; } ;
typedef int states ;
typedef int sopno ;
struct TYPE_2__ {int cflags; int nbol; scalar_t__ neol; } ;


 int ASSIGN (int ,int ) ;
 int AT (char*,char*,char*,int ,int ) ;
 int BOL ;
 int BOLEOL ;
 int BOW ;
 int CLEAR (int ) ;
 int EOL ;
 int EOW ;
 scalar_t__ EQ (int ,int ) ;
 scalar_t__ ISSET (int ,int ) ;
 scalar_t__ ISWORD (int) ;
 int NOTHING ;
 char OUT ;
 int R_REGEX_NEWLINE ;
 int R_REGEX_NOTBOL ;
 int R_REGEX_NOTEOL ;
 int SET1 (int ,int ) ;
 int SP (char*,int ,int) ;
 int step (TYPE_1__*,int ,int ,int ,int,int ) ;

__attribute__((used)) static char *
slow(struct match *m, char *start, char *stop, sopno startst, sopno stopst)
{
 states st = m->st;
 states empty = m->empty;
 states tmp = m->tmp;
 char *p = start;
 int c = (start == m->beginp) ? OUT : *(start-1);
 int lastc;
 int flagch;
 int i;
 char *matchp;

 AT("slow", start, stop, startst, stopst);
 CLEAR(st);
 SET1(st, startst);
 SP("sstart", st, *p);
 st = step(m->g, startst, stopst, st, NOTHING, st);
 matchp = ((void*)0);
 for (;;) {

  lastc = c;
  c = (p == m->endp) ? OUT : *p;


  flagch = '\0';
  i = 0;
  if ( (lastc == '\n' && m->g->cflags&R_REGEX_NEWLINE) ||
    (lastc == OUT && !(m->eflags&R_REGEX_NOTBOL)) ) {
   flagch = BOL;
   i = m->g->nbol;
  }
  if ( (c == '\n' && m->g->cflags&R_REGEX_NEWLINE) ||
    (c == OUT && !(m->eflags&R_REGEX_NOTEOL)) ) {
   flagch = (flagch == BOL) ? BOLEOL : EOL;
   i += m->g->neol;
  }
  if (i != 0) {
   for (; i > 0; i--)
    st = step(m->g, startst, stopst, st, flagch, st);
   SP("sboleol", st, c);
  }


  if ( (flagch == BOL || (lastc != OUT && !ISWORD(lastc))) &&
     (c != OUT && ISWORD(c)) ) {
   flagch = BOW;
  }
  if ( (lastc != OUT && ISWORD(lastc)) &&
    (flagch == EOL || (c != OUT && !ISWORD(c))) ) {
   flagch = EOW;
  }
  if (flagch == BOW || flagch == EOW) {
   st = step(m->g, startst, stopst, st, flagch, st);
   SP("sboweow", st, c);
  }


  if (ISSET(st, stopst))
   matchp = p;
  if (EQ(st, empty) || p == stop)
   break;


  ASSIGN(tmp, st);
  ASSIGN(st, empty);
  if (c == OUT) {
   break;
  }
  st = step(m->g, startst, stopst, tmp, c, st);
  SP("saft", st, c);
  if (!EQ(step(m->g, startst, stopst, st, NOTHING, st), st)) {
   break;
  }
  p++;
 }

 return(matchp);
}
