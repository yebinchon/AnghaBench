
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {char* pos; int cur_line; } ;



__attribute__((used)) static void backup(struct lexer *lexer)
{
    lexer->pos--;

    if (*lexer->pos == '\n')
        lexer->cur_line--;
}
