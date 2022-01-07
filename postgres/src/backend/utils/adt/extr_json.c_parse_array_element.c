
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* json_aelem_action ) (int ,int) ;
struct TYPE_6__ {int semstate; int (* array_element_end ) (int ,int) ;int (* array_element_start ) (int ,int) ;} ;
typedef int JsonTokenType ;
typedef TYPE_1__ JsonSemAction ;
typedef int JsonLexContext ;



 int JSON_TOKEN_NULL ;

 int lex_peek (int *) ;
 int parse_array (int *,TYPE_1__*) ;
 int parse_object (int *,TYPE_1__*) ;
 int parse_scalar (int *,TYPE_1__*) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static void
parse_array_element(JsonLexContext *lex, JsonSemAction *sem)
{
 json_aelem_action astart = sem->array_element_start;
 json_aelem_action aend = sem->array_element_end;
 JsonTokenType tok = lex_peek(lex);

 bool isnull;

 isnull = tok == JSON_TOKEN_NULL;

 if (astart != ((void*)0))
  (*astart) (sem->semstate, isnull);


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

 if (aend != ((void*)0))
  (*aend) (sem->semstate, isnull);
}
