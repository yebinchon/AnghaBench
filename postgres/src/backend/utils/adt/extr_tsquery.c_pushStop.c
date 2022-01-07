
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int type; } ;
struct TYPE_5__ {int polstr; } ;
typedef TYPE_1__* TSQueryParserState ;
typedef TYPE_2__ QueryOperand ;


 int QI_VALSTOP ;
 int lcons (TYPE_2__*,int ) ;
 scalar_t__ palloc0 (int) ;

void
pushStop(TSQueryParserState state)
{
 QueryOperand *tmp;

 tmp = (QueryOperand *) palloc0(sizeof(QueryOperand));
 tmp->type = QI_VALSTOP;

 state->polstr = lcons(tmp, state->polstr);
}
