
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saved_text; } ;
typedef TYPE_1__ lex_t ;


 int strbuffer_append_byte (int *,int) ;

__attribute__((used)) static void lex_save(lex_t *lex, int c)
{
    strbuffer_append_byte(&lex->saved_text, c);
}
