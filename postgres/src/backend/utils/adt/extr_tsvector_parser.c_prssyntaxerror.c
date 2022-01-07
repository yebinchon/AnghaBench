
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bufstart; scalar_t__ is_tsquery; } ;
typedef TYPE_1__* TSVectorParseState ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
prssyntaxerror(TSVectorParseState state)
{
 ereport(ERROR,
   (errcode(ERRCODE_SYNTAX_ERROR),
    state->is_tsquery ?
    errmsg("syntax error in tsquery: \"%s\"", state->bufstart) :
    errmsg("syntax error in tsvector: \"%s\"", state->bufstart)));
}
