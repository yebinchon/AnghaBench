
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {char const* pos; char const* start; int ring_buffer; int end; int state; } ;


 int lex_text ;
 int lexeme_ring_buffer_init (int *) ;
 int rawmemchr (char const*,char) ;

__attribute__((used)) static void lex_init(struct lexer *lexer, const char *input)
{
    lexer->state = lex_text;
    lexer->pos = lexer->start = input;
    lexer->end = rawmemchr(input, '\0');
    lexeme_ring_buffer_init(&lexer->ring_buffer);
}
