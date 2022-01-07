
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vars {scalar_t__ subs; scalar_t__ sub10; int err; int nlacons; int * lacons; int * cv2; int * cv; int * treechain; int * tree; int * nfa; int * re; } ;


 int ERR (int) ;
 int FREE (scalar_t__) ;
 int cleanst (struct vars*) ;
 int freecvec (int *) ;
 int freelacons (int *,int ) ;
 int freenfa (int *) ;
 int freesubre (struct vars*,int *) ;
 int rfree (int *) ;

__attribute__((used)) static int
freev(struct vars *v,
   int err)
{
 if (v->re != ((void*)0))
  rfree(v->re);
 if (v->subs != v->sub10)
  FREE(v->subs);
 if (v->nfa != ((void*)0))
  freenfa(v->nfa);
 if (v->tree != ((void*)0))
  freesubre(v, v->tree);
 if (v->treechain != ((void*)0))
  cleanst(v);
 if (v->cv != ((void*)0))
  freecvec(v->cv);
 if (v->cv2 != ((void*)0))
  freecvec(v->cv2);
 if (v->lacons != ((void*)0))
  freelacons(v->lacons, v->nlacons);
 ERR(err);

 return v->err;
}
