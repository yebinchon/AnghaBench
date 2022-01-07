
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {int pos; } ;


 int LEXEME_RIGHT_META ;
 int emit (struct lexer*,int ) ;
 void* lex_text ;
 int right_meta ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static void *lex_right_meta(struct lexer *lexer)
{
    lexer->pos += strlen(right_meta);
    emit(lexer, LEXEME_RIGHT_META);
    return lex_text;
}
