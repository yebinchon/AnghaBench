
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int token_terminator; int token_start; } ;
typedef TYPE_1__ JsonLexContext ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*) ;
 int errmsg (char*,char*) ;
 int memcpy (char*,int,int) ;
 char* palloc (int) ;
 int report_json_context (TYPE_1__*) ;

__attribute__((used)) static void
report_invalid_token(JsonLexContext *lex)
{
 char *token;
 int toklen;


 toklen = lex->token_terminator - lex->token_start;
 token = palloc(toklen + 1);
 memcpy(token, lex->token_start, toklen);
 token[toklen] = '\0';

 ereport(ERROR,
   (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
    errmsg("invalid input syntax for type %s", "json"),
    errdetail("Token \"%s\" is invalid.", token),
    report_json_context(lex)));
}
