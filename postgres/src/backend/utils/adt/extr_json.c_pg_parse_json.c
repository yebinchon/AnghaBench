
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonTokenType ;
typedef int JsonSemAction ;
typedef int JsonLexContext ;


 int JSON_PARSE_END ;

 int JSON_TOKEN_END ;

 int json_lex (int *) ;
 int lex_expect (int ,int *,int ) ;
 int lex_peek (int *) ;
 int parse_array (int *,int *) ;
 int parse_object (int *,int *) ;
 int parse_scalar (int *,int *) ;

void
pg_parse_json(JsonLexContext *lex, JsonSemAction *sem)
{
 JsonTokenType tok;


 json_lex(lex);

 tok = lex_peek(lex);


 switch (tok)
 {
  case 128:
   parse_object(lex, sem);
   break;
  case 129:
   parse_array(lex, sem);
   break;
  default:
   parse_scalar(lex, sem);
 }

 lex_expect(JSON_PARSE_END, lex, JSON_TOKEN_END);

}
