
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t activeptr; TYPE_1__* readptrs; } ;
typedef TYPE_2__ Tuplestorestate ;
struct TYPE_4__ {int eof_reached; } ;



bool
tuplestore_ateof(Tuplestorestate *state)
{
 return state->readptrs[state->activeptr].eof_reached;
}
