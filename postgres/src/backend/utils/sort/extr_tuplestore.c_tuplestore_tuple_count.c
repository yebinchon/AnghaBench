
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_3__ {int tuples; } ;
typedef TYPE_1__ Tuplestorestate ;



int64
tuplestore_tuple_count(Tuplestorestate *state)
{
 return state->tuples;
}
