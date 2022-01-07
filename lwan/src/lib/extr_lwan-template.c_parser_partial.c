
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int descriptor; } ;
struct lwan_tpl {int dummy; } ;
struct TYPE_2__ {int len; int value; } ;
struct lexeme {scalar_t__ type; TYPE_1__ value; } ;


 int ACTION_APPLY_TPL ;
 scalar_t__ LEXEME_IDENTIFIER ;
 int emit_chunk (struct parser*,int ,int ,struct lwan_tpl*) ;
 void* error_lexeme (struct lexeme*,char*,char*) ;
 struct lwan_tpl* lwan_tpl_compile_file (char*,int ) ;
 void* parser_right_meta ;
 char* strndupa (int ,int ) ;
 void* unexpected_lexeme (struct lexeme*) ;

__attribute__((used)) static void *parser_partial(struct parser *parser, struct lexeme *lexeme)
{
    struct lwan_tpl *tpl;
    char *filename = strndupa(lexeme->value.value, lexeme->value.len);

    if (lexeme->type != LEXEME_IDENTIFIER)
        return unexpected_lexeme(lexeme);

    tpl = lwan_tpl_compile_file(filename, parser->descriptor);
    if (tpl) {
        emit_chunk(parser, ACTION_APPLY_TPL, 0, tpl);
        return parser_right_meta;
    }

    return error_lexeme(lexeme, "Could not compile template ``%s''", filename);
}
