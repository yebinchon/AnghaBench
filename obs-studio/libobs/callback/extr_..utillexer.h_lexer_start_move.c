
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {char* text; char* offset; } ;


 int lexer_free (struct lexer*) ;

__attribute__((used)) static inline void lexer_start_move(struct lexer *lex, char *text)
{
 lexer_free(lex);
 lex->text = text;
 lex->offset = lex->text;
}
