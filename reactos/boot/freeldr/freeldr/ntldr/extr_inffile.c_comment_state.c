
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int dummy; } ;
typedef int CHAR ;


 int is_eol (struct parser*,int const*) ;
 int pop_state (struct parser*) ;

__attribute__((used)) static
const CHAR*
comment_state(
    struct parser *parser,
    const CHAR *pos )
{
    const CHAR *p = pos;

    while (!is_eol(parser, p))
        p++;
    pop_state(parser);
    return p;
}
