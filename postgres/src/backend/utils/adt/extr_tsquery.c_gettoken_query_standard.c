
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ts_tokentype ;
typedef int int8 ;
typedef scalar_t__ int16 ;
struct TYPE_4__ {int state; char* buf; int count; int buffer; int valstate; } ;
typedef TYPE_1__* TSQueryParserState ;


 int ERRCODE_SYNTAX_ERROR ;
 int ERROR ;
 int OP_AND ;
 int OP_NOT ;
 int OP_OR ;
 int OP_PHRASE ;
 int PT_CLOSE ;
 int PT_END ;
 int PT_ERR ;
 int PT_OPEN ;
 int PT_OPR ;
 int PT_VAL ;



 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 char* get_modifiers (char*,scalar_t__*,int*) ;
 int gettoken_tsvector (int ,char**,int*,int *,int *,char**) ;
 int parse_phrase_operator (TYPE_1__*,scalar_t__*) ;
 scalar_t__ pg_mblen (char*) ;
 int reset_tsvector_parser (int ,char*) ;
 int t_iseq (char*,char) ;
 int t_isspace (char*) ;

__attribute__((used)) static ts_tokentype
gettoken_query_standard(TSQueryParserState state, int8 *operator,
      int *lenval, char **strval,
      int16 *weight, bool *prefix)
{
 *weight = 0;
 *prefix = 0;

 while (1)
 {
  switch (state->state)
  {
   case 130:
   case 129:
    if (t_iseq(state->buf, '!'))
    {
     state->buf++;
     state->state = 129;
     *operator = OP_NOT;
     return PT_OPR;
    }
    else if (t_iseq(state->buf, '('))
    {
     state->buf++;
     state->state = 129;
     state->count++;
     return PT_OPEN;
    }
    else if (t_iseq(state->buf, ':'))
    {
     ereport(ERROR,
       (errcode(ERRCODE_SYNTAX_ERROR),
        errmsg("syntax error in tsquery: \"%s\"",
         state->buffer)));
    }
    else if (!t_isspace(state->buf))
    {




     reset_tsvector_parser(state->valstate, state->buf);
     if (gettoken_tsvector(state->valstate, strval, lenval,
            ((void*)0), ((void*)0), &state->buf))
     {
      state->buf = get_modifiers(state->buf, weight, prefix);
      state->state = 128;
      return PT_VAL;
     }
     else if (state->state == 130)
     {
      return PT_END;
     }
     else
      ereport(ERROR,
        (errcode(ERRCODE_SYNTAX_ERROR),
         errmsg("no operand in tsquery: \"%s\"",
          state->buffer)));
    }
    break;

   case 128:
    if (t_iseq(state->buf, '&'))
    {
     state->buf++;
     state->state = 129;
     *operator = OP_AND;
     return PT_OPR;
    }
    else if (t_iseq(state->buf, '|'))
    {
     state->buf++;
     state->state = 129;
     *operator = OP_OR;
     return PT_OPR;
    }
    else if (parse_phrase_operator(state, weight))
    {

     state->state = 129;
     *operator = OP_PHRASE;
     return PT_OPR;
    }
    else if (t_iseq(state->buf, ')'))
    {
     state->buf++;
     state->count--;
     return (state->count < 0) ? PT_ERR : PT_CLOSE;
    }
    else if (*state->buf == '\0')
    {
     return (state->count) ? PT_ERR : PT_END;
    }
    else if (!t_isspace(state->buf))
    {
     return PT_ERR;
    }
    break;
  }

  state->buf += pg_mblen(state->buf);
 }
}
