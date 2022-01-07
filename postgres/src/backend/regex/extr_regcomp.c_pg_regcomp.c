
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct vars {scalar_t__ err; int cflags; int nsubs; int nlacons; struct subre* lacons; int ntree; TYPE_4__* tree; TYPE_1__* re; scalar_t__ nsubexp; TYPE_2__* nfa; int * cm; int nlcolor; int * cv; scalar_t__ spaceused; int * cv2; int * treefree; int * treechain; int * wordchrs; int ** subs; int ** sub10; int * savestop; int savenow; int const* now; int const* stop; } ;
struct subre {int subno; } ;
struct nfa {int dummy; } ;
struct guts {int nlacons; int cflags; struct subre* lacons; int compare; int ntree; TYPE_4__* tree; scalar_t__ nsub; int info; int magic; int search; int cmap; } ;
struct TYPE_17__ {int re_csize; scalar_t__ re_nsub; int re_info; int * re_guts; void* re_fns; int re_collation; int re_magic; } ;
typedef TYPE_1__ regex_t ;
typedef int chr ;
struct TYPE_19__ {int flags; } ;
struct TYPE_18__ {int final; int init; } ;
typedef int Oid ;
typedef int FILE ;
typedef int DISCARD ;


 int CNOERR () ;
 int COLORLESS ;
 int EOS ;
 int GUTSMAGIC ;
 int LATYPE_IS_AHEAD (int ) ;
 int * MALLOC (int) ;
 int NOTE (int ) ;
 int PLAIN ;
 int REG_ADVANCED ;
 int REG_ADVF ;
 int REG_DUMP ;
 int REG_ESPACE ;
 int REG_EXPANDED ;
 int REG_EXTENDED ;
 int REG_ICASE ;
 int REG_INVARG ;
 int REG_NEWLINE ;
 int REG_NLANCH ;
 int REG_NLSTOP ;
 int REG_PROGRESS ;
 int REG_QUOTE ;
 int REG_USHORTEST ;
 int REMAGIC ;
 int SEE (int ) ;
 int SHORTER ;
 void* VS (int *) ;
 int ZAPCNFA (int ) ;
 int assert (int) ;
 int casecmp ;
 int cleanst (struct vars*) ;
 int cmp ;
 int compact (TYPE_2__*,int *) ;
 int dump (TYPE_1__*,int *) ;
 int dumpnfa (TYPE_2__*,int *) ;
 int dumpst (TYPE_4__*,int *,int) ;
 int fprintf (int *,char*,...) ;
 int freev (struct vars*,int ) ;
 int functions ;
 int initcm (struct vars*,int *) ;
 int lexstart (struct vars*) ;
 int makesearch (struct vars*,TYPE_2__*) ;
 int markst (TYPE_4__*) ;
 int * newcvec (int,int) ;
 int newline () ;
 TYPE_2__* newnfa (struct vars*,int *,struct nfa*) ;
 int nfanode (struct vars*,struct subre*,int,int *) ;
 int nfatree (struct vars*,TYPE_4__*,int *) ;
 int numst (TYPE_4__*,int) ;
 int okcolors (TYPE_2__*,int *) ;
 int optimize (TYPE_2__*,int *) ;
 int optst (struct vars*,TYPE_4__*) ;
 TYPE_4__* parse (struct vars*,int ,int ,int ,int ) ;
 int pg_set_regex_collation (int ) ;
 int specialcolors (TYPE_2__*) ;
 int * stdout ;
 int subcolor (int *,int ) ;

int
pg_regcomp(regex_t *re,
     const chr *string,
     size_t len,
     int flags,
     Oid collation)
{
 struct vars var;
 struct vars *v = &var;
 struct guts *g;
 int i;
 size_t j;




 FILE *debug = (FILE *) ((void*)0);






 if (re == ((void*)0) || string == ((void*)0))
  return REG_INVARG;
 if ((flags & REG_QUOTE) &&
  (flags & (REG_ADVANCED | REG_EXPANDED | REG_NEWLINE)))
  return REG_INVARG;
 if (!(flags & REG_EXTENDED) && (flags & REG_ADVF))
  return REG_INVARG;


 pg_set_regex_collation(collation);


 v->re = re;
 v->now = string;
 v->stop = v->now + len;
 v->savenow = v->savestop = ((void*)0);
 v->err = 0;
 v->cflags = flags;
 v->nsubexp = 0;
 v->subs = v->sub10;
 v->nsubs = 10;
 for (j = 0; j < v->nsubs; j++)
  v->subs[j] = ((void*)0);
 v->nfa = ((void*)0);
 v->cm = ((void*)0);
 v->nlcolor = COLORLESS;
 v->wordchrs = ((void*)0);
 v->tree = ((void*)0);
 v->treechain = ((void*)0);
 v->treefree = ((void*)0);
 v->cv = ((void*)0);
 v->cv2 = ((void*)0);
 v->lacons = ((void*)0);
 v->nlacons = 0;
 v->spaceused = 0;
 re->re_magic = REMAGIC;
 re->re_info = 0;
 re->re_csize = sizeof(chr);
 re->re_collation = collation;
 re->re_guts = ((void*)0);
 re->re_fns = VS(&functions);


 re->re_guts = VS(MALLOC(sizeof(struct guts)));
 if (re->re_guts == ((void*)0))
  return freev(v, REG_ESPACE);
 g = (struct guts *) re->re_guts;
 g->tree = ((void*)0);
 initcm(v, &g->cmap);
 v->cm = &g->cmap;
 g->lacons = ((void*)0);
 g->nlacons = 0;
 ZAPCNFA(g->search);
 v->nfa = newnfa(v, v->cm, (struct nfa *) ((void*)0));
 { if (ISERR()) return freev(v, v->err); };

 v->cv = newcvec(100, 20);
 if (v->cv == ((void*)0))
  return freev(v, REG_ESPACE);


 lexstart(v);
 if ((v->cflags & REG_NLSTOP) || (v->cflags & REG_NLANCH))
 {

  v->nlcolor = subcolor(v->cm, newline());
  okcolors(v->nfa, v->cm);
 }
 { if (ISERR()) return freev(v, v->err); };
 v->tree = parse(v, EOS, PLAIN, v->nfa->init, v->nfa->final);
 assert(SEE(EOS));
 { if (ISERR()) return freev(v, v->err); };
 assert(v->tree != ((void*)0));


 specialcolors(v->nfa);
 { if (ISERR()) return freev(v, v->err); };
 optst(v, v->tree);
 v->ntree = numst(v->tree, 1);
 markst(v->tree);
 cleanst(v);
 re->re_info |= nfatree(v, v->tree, debug);
 { if (ISERR()) return freev(v, v->err); };
 assert(v->nlacons == 0 || v->lacons != ((void*)0));
 for (i = 1; i < v->nlacons; i++)
 {
  struct subre *lasub = &v->lacons[i];







  nfanode(v, lasub, !LATYPE_IS_AHEAD(lasub->subno), debug);
 }
 { if (ISERR()) return freev(v, v->err); };
 if (v->tree->flags & SHORTER)
  NOTE(REG_USHORTEST);







 (DISCARD) optimize(v->nfa, debug);
 { if (ISERR()) return freev(v, v->err); };
 makesearch(v, v->nfa);
 { if (ISERR()) return freev(v, v->err); };
 compact(v->nfa, &g->search);
 { if (ISERR()) return freev(v, v->err); };


 re->re_nsub = v->nsubexp;
 v->re = ((void*)0);
 g->magic = GUTSMAGIC;
 g->cflags = v->cflags;
 g->info = re->re_info;
 g->nsub = re->re_nsub;
 g->tree = v->tree;
 v->tree = ((void*)0);
 g->ntree = v->ntree;
 g->compare = (v->cflags & REG_ICASE) ? casecmp : cmp;
 g->lacons = v->lacons;
 v->lacons = ((void*)0);
 g->nlacons = v->nlacons;






 assert(v->err == 0);
 return freev(v, 0);
}
