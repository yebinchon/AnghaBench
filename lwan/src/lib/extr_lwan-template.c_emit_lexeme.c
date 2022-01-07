
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; int start; int ring_buffer; } ;
struct lexeme {int dummy; } ;


 int lexeme_ring_buffer_put (int *,struct lexeme*) ;

__attribute__((used)) static void emit_lexeme(struct lexer *lexer, struct lexeme *lexeme)
{
    lexeme_ring_buffer_put(&lexer->ring_buffer, lexeme);
    lexer->start = lexer->pos;
}
