
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int token_type; } ;
typedef int JsonTokenType ;
typedef TYPE_1__ JsonLexContext ;



__attribute__((used)) static inline JsonTokenType
lex_peek(JsonLexContext *lex)
{
 return lex->token_type;
}
