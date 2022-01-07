
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* word; } ;
typedef TYPE_1__* TSVectorParseState ;


 int pfree (TYPE_1__*) ;

void
close_tsvector_parser(TSVectorParseState state)
{
 pfree(state->word);
 pfree(state);
}
