
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int dummy; } ;


 int EOF ;
 int ignore (struct lexer*) ;
 int left_meta ;
 void* lex_error (struct lexer*,char*) ;
 void* lex_text ;
 int next (struct lexer*) ;
 size_t strlen (int ) ;

__attribute__((used)) static void *lex_comment(struct lexer *lexer)
{
    size_t brackets = strlen(left_meta);

    do {
        int r = next(lexer);
        if (r == '{')
            brackets++;
        else if (r == '}')
            brackets--;
        else if (r == EOF)
            return lex_error(lexer,
                             "unexpected EOF while scanning comment end");
    } while (brackets);

    ignore(lexer);
    return lex_text;
}
