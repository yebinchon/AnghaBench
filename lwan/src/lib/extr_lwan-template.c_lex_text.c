
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexer {scalar_t__ pos; scalar_t__ start; } ;


 scalar_t__ EOF ;
 int LEXEME_EOF ;
 int LEXEME_TEXT ;
 int emit (struct lexer*,int ) ;
 int left_meta ;
 void* lex_error (struct lexer*,char*) ;
 void* lex_left_meta ;
 scalar_t__ lex_streq (struct lexer*,int ,int ) ;
 scalar_t__ next (struct lexer*) ;
 int right_meta ;
 int strlen (int ) ;

__attribute__((used)) static void *lex_text(struct lexer *lexer)
{
    do {
        if (lex_streq(lexer, left_meta, strlen(left_meta))) {
            if (lexer->pos > lexer->start)
                emit(lexer, LEXEME_TEXT);
            return lex_left_meta;
        }

        if (lex_streq(lexer, right_meta, strlen(right_meta)))
            return lex_error(lexer, "unexpected action close sequence");
    } while (next(lexer) != EOF);
    if (lexer->pos > lexer->start)
        emit(lexer, LEXEME_TEXT);
    emit(lexer, LEXEME_EOF);
    return ((void*)0);
}
