
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; } ;


 int LEXEME_LEFT_META ;
 int backup (struct lexer*) ;
 int emit (struct lexer*,int ) ;
 int left_meta ;
 void* lex_comment ;
 void* lex_inside_action ;
 int next (struct lexer*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void *lex_left_meta(struct lexer *lexer)
{
    lexer->pos += strlen(left_meta);
    int r = next(lexer);
    if (r == '!')
        return lex_comment;
    backup(lexer);

    emit(lexer, LEXEME_LEFT_META);
    return lex_inside_action;
}
