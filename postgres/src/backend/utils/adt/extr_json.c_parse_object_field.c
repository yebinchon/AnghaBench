
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int (* json_ofield_action ) (int ,char*,int) ;
struct TYPE_6__ {int semstate; int (* object_field_end ) (int ,char*,int) ;int (* object_field_start ) (int ,char*,int) ;} ;
typedef int JsonTokenType ;
typedef TYPE_1__ JsonSemAction ;
typedef int JsonLexContext ;


 int JSON_PARSE_OBJECT_LABEL ;
 int JSON_PARSE_STRING ;

 int JSON_TOKEN_COLON ;
 int JSON_TOKEN_NULL ;

 int JSON_TOKEN_STRING ;
 int lex_accept (int *,int ,char**) ;
 int lex_expect (int ,int *,int ) ;
 int lex_peek (int *) ;
 int parse_array (int *,TYPE_1__*) ;
 int parse_object (int *,TYPE_1__*) ;
 int parse_scalar (int *,TYPE_1__*) ;
 int report_parse_error (int ,int *) ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

__attribute__((used)) static void
parse_object_field(JsonLexContext *lex, JsonSemAction *sem)
{






 char *fname = ((void*)0);
 json_ofield_action ostart = sem->object_field_start;
 json_ofield_action oend = sem->object_field_end;
 bool isnull;
 char **fnameaddr = ((void*)0);
 JsonTokenType tok;

 if (ostart != ((void*)0) || oend != ((void*)0))
  fnameaddr = &fname;

 if (!lex_accept(lex, JSON_TOKEN_STRING, fnameaddr))
  report_parse_error(JSON_PARSE_STRING, lex);

 lex_expect(JSON_PARSE_OBJECT_LABEL, lex, JSON_TOKEN_COLON);

 tok = lex_peek(lex);
 isnull = tok == JSON_TOKEN_NULL;

 if (ostart != ((void*)0))
  (*ostart) (sem->semstate, fname, isnull);

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

 if (oend != ((void*)0))
  (*oend) (sem->semstate, fname, isnull);
}
