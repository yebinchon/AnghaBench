
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ pg_crc32 ;
typedef scalar_t__ int32 ;
struct TYPE_6__ {int weight; int prefix; int length; int distance; scalar_t__ valcrc; int type; } ;
struct TYPE_5__ {int polstr; int buffer; } ;
typedef TYPE_1__* TSQueryParserState ;
typedef TYPE_2__ QueryOperand ;


 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int MAXSTRLEN ;
 int MAXSTRPOS ;
 int QI_VAL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int lcons (TYPE_2__*,int ) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static void
pushValue_internal(TSQueryParserState state, pg_crc32 valcrc, int distance, int lenval, int weight, bool prefix)
{
 QueryOperand *tmp;

 if (distance >= MAXSTRPOS)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("value is too big in tsquery: \"%s\"",
      state->buffer)));
 if (lenval >= MAXSTRLEN)
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("operand is too long in tsquery: \"%s\"",
      state->buffer)));

 tmp = (QueryOperand *) palloc0(sizeof(QueryOperand));
 tmp->type = QI_VAL;
 tmp->weight = weight;
 tmp->prefix = prefix;
 tmp->valcrc = (int32) valcrc;
 tmp->length = lenval;
 tmp->distance = distance;

 state->polstr = lcons(tmp, state->polstr);
}
