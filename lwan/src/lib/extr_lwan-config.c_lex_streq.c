
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; } ;


 size_t remaining (struct lexer*) ;
 int strncmp (int ,char const*,size_t) ;

__attribute__((used)) static bool lex_streq(struct lexer *lexer, const char *str, size_t s)
{
    if (remaining(lexer) < s)
        return 0;

    return !strncmp(lexer->pos, str, s);
}
