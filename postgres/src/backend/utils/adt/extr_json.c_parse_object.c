
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int (* json_struct_action ) (int ) ;
struct TYPE_12__ {int lex_level; } ;
struct TYPE_11__ {int semstate; int (* object_end ) (int ) ;int (* object_start ) (int ) ;} ;
typedef int JsonTokenType ;
typedef TYPE_1__ JsonSemAction ;
typedef TYPE_2__ JsonLexContext ;


 int JSON_PARSE_OBJECT_NEXT ;
 int JSON_PARSE_OBJECT_START ;
 int JSON_TOKEN_COMMA ;

 int const JSON_TOKEN_OBJECT_START ;

 int check_stack_depth () ;
 int lex_accept (TYPE_2__*,int ,int *) ;
 int lex_expect (int ,TYPE_2__*,int const) ;
 int lex_peek (TYPE_2__*) ;
 int parse_object_field (TYPE_2__*,TYPE_1__*) ;
 int report_parse_error (int ,TYPE_2__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
parse_object(JsonLexContext *lex, JsonSemAction *sem)
{




 json_struct_action ostart = sem->object_start;
 json_struct_action oend = sem->object_end;
 JsonTokenType tok;

 check_stack_depth();

 if (ostart != ((void*)0))
  (*ostart) (sem->semstate);







 lex->lex_level++;


 lex_expect(JSON_PARSE_OBJECT_START, lex, JSON_TOKEN_OBJECT_START);

 tok = lex_peek(lex);
 switch (tok)
 {
  case 128:
   parse_object_field(lex, sem);
   while (lex_accept(lex, JSON_TOKEN_COMMA, ((void*)0)))
    parse_object_field(lex, sem);
   break;
  case 129:
   break;
  default:

   report_parse_error(JSON_PARSE_OBJECT_START, lex);
 }

 lex_expect(JSON_PARSE_OBJECT_NEXT, lex, 129);

 lex->lex_level--;

 if (oend != ((void*)0))
  (*oend) (sem->semstate);
}
