
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lenstem; char** stem; int nstem; int * next; } ;
typedef TYPE_1__ SplitVar ;


 scalar_t__ palloc (int) ;
 char* pstrdup (char*) ;

__attribute__((used)) static SplitVar *
CopyVar(SplitVar *s, int makedup)
{
 SplitVar *v = (SplitVar *) palloc(sizeof(SplitVar));

 v->next = ((void*)0);
 if (s)
 {
  int i;

  v->lenstem = s->lenstem;
  v->stem = (char **) palloc(sizeof(char *) * v->lenstem);
  v->nstem = s->nstem;
  for (i = 0; i < s->nstem; i++)
   v->stem[i] = (makedup) ? pstrdup(s->stem[i]) : s->stem[i];
 }
 else
 {
  v->lenstem = 16;
  v->stem = (char **) palloc(sizeof(char *) * v->lenstem);
  v->nstem = 0;
 }
 return v;
}
