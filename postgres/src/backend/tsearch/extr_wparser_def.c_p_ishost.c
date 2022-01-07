
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int wanthost; scalar_t__ type; TYPE_1__* state; scalar_t__ lenchartoken; scalar_t__ lenbytetoken; } ;
struct TYPE_8__ {int charlen; int lenchartoken; int lenbytetoken; int poschar; int posbyte; } ;
typedef TYPE_2__ TParser ;


 scalar_t__ HOST ;
 int TParserCopyClose (TYPE_2__*) ;
 TYPE_2__* TParserCopyInit (TYPE_2__*) ;
 scalar_t__ TParserGet (TYPE_2__*) ;

__attribute__((used)) static int
p_ishost(TParser *prs)
{
 TParser *tmpprs = TParserCopyInit(prs);
 int res = 0;

 tmpprs->wanthost = 1;

 if (TParserGet(tmpprs) && tmpprs->type == HOST)
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
