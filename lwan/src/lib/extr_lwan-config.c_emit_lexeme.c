
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; int start; int buffer; } ;
struct lexeme {int dummy; } ;


 scalar_t__ lexeme_ring_buffer_try_put (int *,struct lexeme*) ;

__attribute__((used)) static void emit_lexeme(struct lexer *lexer, struct lexeme *lexeme)
{
    if (lexeme_ring_buffer_try_put(&lexer->buffer, lexeme))
        lexer->start = lexer->pos;
}
