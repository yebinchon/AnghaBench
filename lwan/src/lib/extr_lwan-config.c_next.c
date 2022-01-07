
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int* pos; int* end; int cur_line; } ;



__attribute__((used)) static int next(struct lexer *lexer)
{
    if (lexer->pos >= lexer->end) {
        lexer->pos = lexer->end + 1;
        return '\0';
    }

    int r = *lexer->pos;
    lexer->pos++;

    if (r == '\n')
        lexer->cur_line++;

    return r;
}
