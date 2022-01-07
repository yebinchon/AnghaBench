
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ status; } ;
typedef TYPE_1__ Tuplestorestate ;


 scalar_t__ TSS_INMEM ;

bool
tuplestore_in_memory(Tuplestorestate *state)
{
 return (state->status == TSS_INMEM);
}
