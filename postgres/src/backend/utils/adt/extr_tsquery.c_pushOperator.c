
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int8 ;
typedef int int16 ;
struct TYPE_6__ {int distance; scalar_t__ oper; int type; } ;
struct TYPE_5__ {int polstr; } ;
typedef TYPE_1__* TSQueryParserState ;
typedef TYPE_2__ QueryOperator ;


 int Assert (int) ;
 scalar_t__ OP_AND ;
 scalar_t__ OP_NOT ;
 scalar_t__ OP_OR ;
 scalar_t__ OP_PHRASE ;
 int QI_OPR ;
 int lcons (TYPE_2__*,int ) ;
 scalar_t__ palloc0 (int) ;

void
pushOperator(TSQueryParserState state, int8 oper, int16 distance)
{
 QueryOperator *tmp;

 Assert(oper == OP_NOT || oper == OP_AND || oper == OP_OR || oper == OP_PHRASE);

 tmp = (QueryOperator *) palloc0(sizeof(QueryOperator));
 tmp->type = QI_OPR;
 tmp->oper = oper;
 tmp->distance = (oper == OP_PHRASE) ? distance : 0;


 state->polstr = lcons(tmp, state->polstr);
}
