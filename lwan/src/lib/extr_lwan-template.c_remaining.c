
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {scalar_t__ pos; scalar_t__ end; } ;



__attribute__((used)) static size_t remaining(struct lexer *lexer)
{
    return (size_t)(lexer->end - lexer->pos);
}
