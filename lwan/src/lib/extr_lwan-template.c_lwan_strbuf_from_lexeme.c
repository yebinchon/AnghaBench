
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser {int template_flags; } ;
struct lwan_strbuf {int dummy; } ;
struct TYPE_2__ {int len; int value; } ;
struct lexeme {TYPE_1__ value; } ;


 int LWAN_TPL_FLAG_CONST_TEMPLATE ;
 struct lwan_strbuf* lwan_strbuf_new_static (int ,int ) ;
 struct lwan_strbuf* lwan_strbuf_new_with_size (int ) ;
 int lwan_strbuf_set (struct lwan_strbuf*,int ,int ) ;

__attribute__((used)) static struct lwan_strbuf *lwan_strbuf_from_lexeme(struct parser *parser,
                                                   struct lexeme *lexeme)
{
    if (parser->template_flags & LWAN_TPL_FLAG_CONST_TEMPLATE)
        return lwan_strbuf_new_static(lexeme->value.value, lexeme->value.len);

    struct lwan_strbuf *buf = lwan_strbuf_new_with_size(lexeme->value.len);
    if (buf)
        lwan_strbuf_set(buf, lexeme->value.value, lexeme->value.len);

    return buf;
}
