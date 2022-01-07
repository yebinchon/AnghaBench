
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* json_scalar_action ) (int ,char*,int) ;
struct TYPE_3__ {int semstate; int (* scalar ) (int ,char*,int) ;} ;
typedef int JsonTokenType ;
typedef TYPE_1__ JsonSemAction ;
typedef int JsonLexContext ;


 int JSON_PARSE_VALUE ;





 int lex_accept (int *,int const,char**) ;
 int lex_peek (int *) ;
 int report_parse_error (int ,int *) ;
 int stub1 (int ,char*,int) ;

__attribute__((used)) static inline void
parse_scalar(JsonLexContext *lex, JsonSemAction *sem)
{
 char *val = ((void*)0);
 json_scalar_action sfunc = sem->scalar;
 char **valaddr;
 JsonTokenType tok = lex_peek(lex);

 valaddr = sfunc == ((void*)0) ? ((void*)0) : &val;


 switch (tok)
 {
  case 128:
   lex_accept(lex, 128, valaddr);
   break;
  case 132:
   lex_accept(lex, 132, valaddr);
   break;
  case 131:
   lex_accept(lex, 131, valaddr);
   break;
  case 130:
   lex_accept(lex, 130, valaddr);
   break;
  case 129:
   lex_accept(lex, 129, valaddr);
   break;
  default:
   report_parse_error(JSON_PARSE_VALUE, lex);
 }

 if (sfunc != ((void*)0))
  (*sfunc) (sem->semstate, val, tok);
}
