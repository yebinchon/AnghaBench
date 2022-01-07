
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonTokenType ;
typedef int JsonParseContext ;
typedef int JsonLexContext ;


 int lex_accept (int *,int ,int *) ;
 int report_parse_error (int ,int *) ;

__attribute__((used)) static inline void
lex_expect(JsonParseContext ctx, JsonLexContext *lex, JsonTokenType token)
{
 if (!lex_accept(lex, token, ((void*)0)))
  report_parse_error(ctx, lex);
}
