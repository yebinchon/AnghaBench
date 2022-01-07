
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; int start; } ;



__attribute__((used)) static void ignore(struct lexer *lexer)
{
    lexer->start = lexer->pos;
}
