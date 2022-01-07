
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {size_t pos; } ;


 int ignore (struct lexer*) ;

__attribute__((used)) static void advance_n(struct lexer *lexer, size_t n)
{
    lexer->pos += n;
    ignore(lexer);
}
