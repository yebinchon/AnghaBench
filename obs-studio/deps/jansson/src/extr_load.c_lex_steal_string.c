
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* val; size_t len; } ;
struct TYPE_5__ {TYPE_2__ string; } ;
struct TYPE_7__ {scalar_t__ token; TYPE_1__ value; } ;
typedef TYPE_3__ lex_t ;


 scalar_t__ TOKEN_STRING ;

__attribute__((used)) static char *lex_steal_string(lex_t *lex, size_t *out_len)
{
    char *result = ((void*)0);
    if(lex->token == TOKEN_STRING) {
        result = lex->value.string.val;
        *out_len = lex->value.string.len;
        lex->value.string.val = ((void*)0);
        lex->value.string.len = 0;
    }
    return result;
}
