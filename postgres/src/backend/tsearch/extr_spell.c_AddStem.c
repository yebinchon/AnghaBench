
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nstem; int lenstem; char** stem; } ;
typedef TYPE_1__ SplitVar ;


 scalar_t__ repalloc (char**,int) ;

__attribute__((used)) static void
AddStem(SplitVar *v, char *word)
{
 if (v->nstem >= v->lenstem)
 {
  v->lenstem *= 2;
  v->stem = (char **) repalloc(v->stem, sizeof(char *) * v->lenstem);
 }

 v->stem[v->nstem] = word;
 v->nstem++;
}
