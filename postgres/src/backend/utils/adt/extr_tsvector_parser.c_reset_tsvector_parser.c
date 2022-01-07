
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* prsbuf; } ;
typedef TYPE_1__* TSVectorParseState ;



void
reset_tsvector_parser(TSVectorParseState state, char *input)
{
 state->prsbuf = input;
}
