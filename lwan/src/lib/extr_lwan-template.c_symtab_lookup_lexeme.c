
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int dummy; } ;
struct lwan_var_descriptor {int dummy; } ;
struct TYPE_2__ {scalar_t__ len; int value; } ;
struct lexeme {TYPE_1__ value; } ;


 scalar_t__ LEXEME_MAX_LEN ;
 int lwan_status_error (char*,scalar_t__) ;
 int strndupa (int ,scalar_t__) ;
 struct lwan_var_descriptor* symtab_lookup (struct parser*,int ) ;

__attribute__((used)) static __attribute__((noinline)) struct lwan_var_descriptor *
symtab_lookup_lexeme(struct parser *parser, struct lexeme *lexeme)
{
    if (lexeme->value.len > LEXEME_MAX_LEN) {
        lwan_status_error("Lexeme exceeds %d characters", LEXEME_MAX_LEN);
        return ((void*)0);
    }

    return symtab_lookup(parser,
                         strndupa(lexeme->value.value, lexeme->value.len));
}
