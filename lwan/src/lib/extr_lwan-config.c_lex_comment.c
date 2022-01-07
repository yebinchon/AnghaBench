
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int backup (struct lexer*) ;
 scalar_t__ iscomment (int ) ;
 void* lex_config ;
 int next (struct lexer*) ;

__attribute__((used)) static void *lex_comment(struct lexer *lexer)
{
    while (iscomment(next(lexer)))
        ;
    backup(lexer);
    return lex_config;
}
