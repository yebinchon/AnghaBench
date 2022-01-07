
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int charlen; int lenchartoken; int lenbytetoken; int poschar; int posbyte; int state; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__* state; scalar_t__ lenchartoken; scalar_t__ lenbytetoken; } ;
typedef TYPE_1__ TParser ;


 int TPS_InURLPathFirst ;
 int TParserCopyClose (TYPE_1__*) ;
 TYPE_1__* TParserCopyInit (TYPE_1__*) ;
 scalar_t__ TParserGet (TYPE_1__*) ;
 scalar_t__ URLPATH ;
 TYPE_3__* newTParserPosition (TYPE_3__*) ;

__attribute__((used)) static int
p_isURLPath(TParser *prs)
{
 TParser *tmpprs = TParserCopyInit(prs);
 int res = 0;

 tmpprs->state = newTParserPosition(tmpprs->state);
 tmpprs->state->state = TPS_InURLPathFirst;

 if (TParserGet(tmpprs) && tmpprs->type == URLPATH)
 {
  prs->state->posbyte += tmpprs->lenbytetoken;
  prs->state->poschar += tmpprs->lenchartoken;
  prs->state->lenbytetoken += tmpprs->lenbytetoken;
  prs->state->lenchartoken += tmpprs->lenchartoken;
  prs->state->charlen = tmpprs->state->charlen;
  res = 1;
 }
 TParserCopyClose(tmpprs);

 return res;
}
