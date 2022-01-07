
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_6__ {char* lexeme; TYPE_2__* entries; } ;
typedef TYPE_1__ TheLexeme ;
struct TYPE_8__ {int nwrds; int ntwrds; TYPE_1__* wrds; } ;
struct TYPE_7__ {int posinsubst; int idsubst; int * nextentry; } ;
typedef TYPE_2__ LexemeInfo ;
typedef TYPE_3__ DictThesaurus ;


 int memcpy (char*,char*,int) ;
 char* palloc (int) ;
 scalar_t__ repalloc (TYPE_1__*,int) ;

__attribute__((used)) static void
newLexeme(DictThesaurus *d, char *b, char *e, uint32 idsubst, uint16 posinsubst)
{
 TheLexeme *ptr;

 if (d->nwrds >= d->ntwrds)
 {
  if (d->ntwrds == 0)
  {
   d->ntwrds = 16;
   d->wrds = (TheLexeme *) palloc(sizeof(TheLexeme) * d->ntwrds);
  }
  else
  {
   d->ntwrds *= 2;
   d->wrds = (TheLexeme *) repalloc(d->wrds, sizeof(TheLexeme) * d->ntwrds);
  }
 }

 ptr = d->wrds + d->nwrds;
 d->nwrds++;

 ptr->lexeme = palloc(e - b + 1);

 memcpy(ptr->lexeme, b, e - b);
 ptr->lexeme[e - b] = '\0';

 ptr->entries = (LexemeInfo *) palloc(sizeof(LexemeInfo));

 ptr->entries->nextentry = ((void*)0);
 ptr->entries->idsubst = idsubst;
 ptr->entries->posinsubst = posinsubst;
}
