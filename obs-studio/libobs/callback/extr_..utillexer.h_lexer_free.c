
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int text; } ;


 int bfree (int ) ;
 int lexer_init (struct lexer*) ;

__attribute__((used)) static inline void lexer_free(struct lexer *lex)
{
 bfree(lex->text);
 lexer_init(lex);
}
