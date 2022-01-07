
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int EOF ;
 int backup (struct lexer*) ;
 int ignore (struct lexer*) ;
 scalar_t__ isident (int) ;
 scalar_t__ isspace (int) ;
 void* lex_error (struct lexer*,char*,...) ;
 void* lex_identifier ;
 int next (struct lexer*) ;

__attribute__((used)) static void *lex_partial(struct lexer *lexer)
{
    while (1) {
        int r = next(lexer);

        if (r == EOF)
            return lex_error(lexer, "unexpected EOF while scanning action");
        if (r == '\n')
            return lex_error(lexer, "actions cannot span multiple lines");
        if (isspace(r)) {
            ignore(lexer);
            continue;
        }
        if (isident(r)) {
            backup(lexer);
            return lex_identifier;
        }
        return lex_error(lexer, "unexpected character: %c", r);
    }
}
