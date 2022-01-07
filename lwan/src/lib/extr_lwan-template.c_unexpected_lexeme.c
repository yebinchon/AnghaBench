
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ len; } ;
struct lexeme {size_t type; TYPE_1__ value; } ;


 size_t LEXEME_ERROR ;
 void* error_lexeme (struct lexeme*,char*,int ,int,int ) ;
 int * lexeme_type_str ;

__attribute__((used)) static void *unexpected_lexeme(struct lexeme *lexeme)
{
    if (lexeme->type == LEXEME_ERROR)
        return ((void*)0);

    return error_lexeme(lexeme, "unexpected lexeme: %s [%.*s]",
                        lexeme_type_str[lexeme->type], (int)lexeme->value.len,
                        lexeme->value.value);
}
