
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int text; int offset; } ;



__attribute__((used)) static inline void lexer_reset(struct lexer *lex)
{
 lex->offset = lex->text;
}
