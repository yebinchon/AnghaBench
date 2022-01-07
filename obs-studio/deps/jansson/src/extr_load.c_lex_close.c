
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ token; int saved_text; } ;
typedef TYPE_1__ lex_t ;


 scalar_t__ TOKEN_STRING ;
 int lex_free_string (TYPE_1__*) ;
 int strbuffer_close (int *) ;

__attribute__((used)) static void lex_close(lex_t *lex)
{
    if(lex->token == TOKEN_STRING)
        lex_free_string(lex);
    strbuffer_close(&lex->saved_text);
}
