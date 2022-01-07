
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16 ;
struct TYPE_8__ {scalar_t__ lastlexeme; } ;
struct TYPE_7__ {size_t nsubst; TYPE_3__* subst; } ;
struct TYPE_6__ {size_t idsubst; struct TYPE_6__* nextvariant; } ;
typedef int TSLexeme ;
typedef TYPE_1__ LexemeInfo ;
typedef TYPE_2__ DictThesaurus ;


 int Assert (int) ;
 int * copyTSLexeme (TYPE_3__*) ;

__attribute__((used)) static TSLexeme *
checkMatch(DictThesaurus *d, LexemeInfo *info, uint16 curpos, bool *moreres)
{
 *moreres = 0;
 while (info)
 {
  Assert(info->idsubst < d->nsubst);
  if (info->nextvariant)
   *moreres = 1;
  if (d->subst[info->idsubst].lastlexeme == curpos)
   return copyTSLexeme(d->subst + info->idsubst);
  info = info->nextvariant;
 }

 return ((void*)0);
}
