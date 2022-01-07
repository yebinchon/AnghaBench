
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_4__ {scalar_t__ lenchartoken; int poschar; scalar_t__ lenbytetoken; int posbyte; } ;
typedef TYPE_2__ TParser ;



__attribute__((used)) static void
SpecialHyphen(TParser *prs)
{
 prs->state->posbyte -= prs->state->lenbytetoken;
 prs->state->poschar -= prs->state->lenchartoken;
}
