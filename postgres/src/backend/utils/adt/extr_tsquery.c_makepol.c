
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int ts_tokentype ;
typedef int int8 ;
typedef int int16 ;
struct TYPE_7__ {int (* gettoken ) (TYPE_1__*,int *,int*,char**,int *,int*) ;int buffer; } ;
typedef TYPE_1__* TSQueryParserState ;
typedef int (* PushFunction ) (int ,TYPE_1__*,char*,int,int ,int) ;
typedef int OperatorElement ;
typedef int Datum ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int OP_OR ;

 int PT_END ;




 int STACKDEPTH ;
 int check_stack_depth () ;
 int cleanOpStack (TYPE_1__*,int *,int*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int pushOpStack (int *,int*,int ,int ) ;
 int stub1 (TYPE_1__*,int *,int*,char**,int *,int*) ;

__attribute__((used)) static void
makepol(TSQueryParserState state,
  PushFunction pushval,
  Datum opaque)
{
 int8 operator = 0;
 ts_tokentype type;
 int lenval = 0;
 char *strval = ((void*)0);
 OperatorElement opstack[STACKDEPTH];
 int lenstack = 0;
 int16 weight = 0;
 bool prefix;


 check_stack_depth();

 while ((type = state->gettoken(state, &operator,
           &lenval, &strval,
           &weight, &prefix)) != PT_END)
 {
  switch (type)
  {
   case 128:
    pushval(opaque, state, strval, lenval, weight, prefix);
    break;
   case 129:
    cleanOpStack(state, opstack, &lenstack, operator);
    pushOpStack(opstack, &lenstack, operator, weight);
    break;
   case 130:
    makepol(state, pushval, opaque);
    break;
   case 132:
    cleanOpStack(state, opstack, &lenstack, OP_OR );
    return;
   case 131:
   default:
    ereport(ERROR,
      (errcode(ERRCODE_SYNTAX_ERROR),
       errmsg("syntax error in tsquery: \"%s\"",
        state->buffer)));
  }
 }

 cleanOpStack(state, opstack, &lenstack, OP_OR );
}
