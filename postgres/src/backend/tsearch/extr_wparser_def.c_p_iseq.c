
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int charlen; int posbyte; } ;
struct TYPE_4__ {char* str; TYPE_3__* state; } ;
typedef TYPE_1__ TParser ;


 int Assert (TYPE_3__*) ;

__attribute__((used)) static int
p_iseq(TParser *prs, char c)
{
 Assert(prs->state);
 return ((prs->state->charlen == 1 && *(prs->str + prs->state->posbyte) == c)) ? 1 : 0;
}
