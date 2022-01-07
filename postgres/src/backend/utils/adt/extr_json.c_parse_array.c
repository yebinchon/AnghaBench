
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int (* json_struct_action ) (int ) ;
struct TYPE_11__ {int lex_level; } ;
struct TYPE_10__ {int semstate; int (* array_end ) (int ) ;int (* array_start ) (int ) ;} ;
typedef TYPE_1__ JsonSemAction ;
typedef TYPE_2__ JsonLexContext ;


 int JSON_PARSE_ARRAY_NEXT ;
 int JSON_PARSE_ARRAY_START ;
 scalar_t__ JSON_TOKEN_ARRAY_END ;
 scalar_t__ JSON_TOKEN_ARRAY_START ;
 int JSON_TOKEN_COMMA ;
 int check_stack_depth () ;
 scalar_t__ lex_accept (TYPE_2__*,int ,int *) ;
 int lex_expect (int ,TYPE_2__*,scalar_t__) ;
 scalar_t__ lex_peek (TYPE_2__*) ;
 int parse_array_element (TYPE_2__*,TYPE_1__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;

__attribute__((used)) static void
parse_array(JsonLexContext *lex, JsonSemAction *sem)
{




 json_struct_action astart = sem->array_start;
 json_struct_action aend = sem->array_end;

 check_stack_depth();

 if (astart != ((void*)0))
  (*astart) (sem->semstate);







 lex->lex_level++;

 lex_expect(JSON_PARSE_ARRAY_START, lex, JSON_TOKEN_ARRAY_START);
 if (lex_peek(lex) != JSON_TOKEN_ARRAY_END)
 {

  parse_array_element(lex, sem);

  while (lex_accept(lex, JSON_TOKEN_COMMA, ((void*)0)))
   parse_array_element(lex, sem);
 }

 lex_expect(JSON_PARSE_ARRAY_NEXT, lex, JSON_TOKEN_ARRAY_END);

 lex->lex_level--;

 if (aend != ((void*)0))
  (*aend) (sem->semstate);
}
