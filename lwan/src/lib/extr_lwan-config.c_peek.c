
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int backup (struct lexer*) ;
 int next (struct lexer*) ;

__attribute__((used)) static int peek(struct lexer *lexer)
{
    int chr = next(lexer);

    backup(lexer);

    return chr;
}
