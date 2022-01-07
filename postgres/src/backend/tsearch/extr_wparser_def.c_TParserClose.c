
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* pgwstr; struct TYPE_5__* wstr; struct TYPE_5__* state; struct TYPE_5__* prev; } ;
typedef TYPE_1__ TParserPosition ;
typedef TYPE_1__ TParser ;


 int fprintf (int ,char*) ;
 int pfree (TYPE_1__*) ;
 int stderr ;

__attribute__((used)) static void
TParserClose(TParser *prs)
{
 while (prs->state)
 {
  TParserPosition *ptr = prs->state->prev;

  pfree(prs->state);
  prs->state = ptr;
 }

 if (prs->wstr)
  pfree(prs->wstr);
 if (prs->pgwstr)
  pfree(prs->pgwstr);




 pfree(prs);
}
