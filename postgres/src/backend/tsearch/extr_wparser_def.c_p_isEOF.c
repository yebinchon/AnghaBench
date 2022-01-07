
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ posbyte; scalar_t__ charlen; } ;
struct TYPE_4__ {scalar_t__ lenstr; TYPE_3__* state; } ;
typedef TYPE_1__ TParser ;


 int Assert (TYPE_3__*) ;

__attribute__((used)) static int
p_isEOF(TParser *prs)
{
 Assert(prs->state);
 return (prs->state->posbyte == prs->lenstr || prs->state->charlen == 0) ? 1 : 0;
}
