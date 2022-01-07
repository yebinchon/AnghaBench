
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* lexeme; int * entries; } ;
typedef TYPE_1__ TheLexeme ;
struct TYPE_7__ {int nwrds; int wrds; } ;
typedef int LexemeInfo ;
typedef TYPE_2__ DictThesaurus ;


 TYPE_1__* bsearch (TYPE_1__*,int ,int ,int,int ) ;
 int cmpLexemeQ ;

__attribute__((used)) static LexemeInfo *
findTheLexeme(DictThesaurus *d, char *lexeme)
{
 TheLexeme key,
      *res;

 if (d->nwrds == 0)
  return ((void*)0);

 key.lexeme = lexeme;
 key.entries = ((void*)0);

 res = bsearch(&key, d->wrds, d->nwrds, sizeof(TheLexeme), cmpLexemeQ);

 if (res == ((void*)0))
  return ((void*)0);
 return res->entries;
}
