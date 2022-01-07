
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int text; int offset; } ;


 int bstrdup (char const*) ;
 int lexer_free (struct lexer*) ;

__attribute__((used)) static inline void lexer_start(struct lexer *lex, const char *text)
{
 lexer_free(lex);
 lex->text = bstrdup(text);
 lex->offset = lex->text;
}
