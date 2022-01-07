
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ts_tokentype ;
typedef int int8 ;
typedef int int16 ;
struct TYPE_5__ {int state; char* buf; int in_quotes; int valstate; } ;
typedef TYPE_1__* TSQueryParserState ;


 int ISOPERATOR (char*) ;
 int OP_AND ;
 int OP_NOT ;
 int OP_OR ;
 int OP_PHRASE ;
 int PT_CLOSE ;
 int PT_END ;
 int PT_OPEN ;
 int PT_OPR ;
 int PT_VAL ;



 int gettoken_tsvector (int ,char**,int*,int *,int *,char**) ;
 int parse_or_operator (TYPE_1__*) ;
 scalar_t__ pg_mblen (char*) ;
 int pushStop (TYPE_1__*) ;
 int reset_tsvector_parser (int ,char*) ;
 int strchr (char*,char) ;
 int t_iseq (char*,char) ;
 int t_isspace (char*) ;

__attribute__((used)) static ts_tokentype
gettoken_query_websearch(TSQueryParserState state, int8 *operator,
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
    if (t_iseq(state->buf, '-'))
    {
     state->buf++;
     state->state = 129;

     if (state->in_quotes)
      continue;

     *operator = OP_NOT;
     return PT_OPR;
    }
    else if (t_iseq(state->buf, '"'))
    {
     state->buf++;

     if (!state->in_quotes)
     {
      state->state = 129;

      if (strchr(state->buf, '"'))
      {

       state->in_quotes = 1;
       return PT_OPEN;
      }


      continue;
     }
     else
     {

      state->in_quotes = 0;
      state->state = 128;
      pushStop(state);
      return PT_CLOSE;
     }
    }
    else if (ISOPERATOR(state->buf))
    {

     state->buf++;
     state->state = 129;
     continue;
    }
    else if (!t_isspace(state->buf))
    {




     reset_tsvector_parser(state->valstate, state->buf);
     if (gettoken_tsvector(state->valstate, strval, lenval,
            ((void*)0), ((void*)0), &state->buf))
     {
      state->state = 128;
      return PT_VAL;
     }
     else if (state->state == 130)
     {
      return PT_END;
     }
     else
     {

      pushStop(state);
      return PT_END;
     }
    }
    break;

   case 128:
    if (t_iseq(state->buf, '"'))
    {
     if (!state->in_quotes)
     {




      state->state = 129;
      *operator = OP_AND;
      return PT_OPR;
     }
     else
     {
      state->buf++;


      state->in_quotes = 0;
      return PT_CLOSE;
     }
    }
    else if (parse_or_operator(state))
    {
     state->state = 129;
     *operator = OP_OR;
     return PT_OPR;
    }
    else if (*state->buf == '\0')
    {
     return PT_END;
    }
    else if (!t_isspace(state->buf))
    {
     if (state->in_quotes)
     {

      *operator = OP_PHRASE;
      *weight = 1;
     }
     else
     {

      *operator = OP_AND;
     }

     state->state = 129;
     return PT_OPR;
    }
    break;
  }

  state->buf += pg_mblen(state->buf);
 }
}
