
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int dummy; } ;
typedef char CHAR ;


 int EOL_BACKSLASH ;
 int is_eol (struct parser*,char const*) ;
 int isspace (unsigned char) ;
 int pop_state (struct parser*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static
const CHAR*
trailing_spaces_state(
    struct parser *parser,
    const CHAR *pos )
{
    const CHAR *p;

    for (p = pos; !is_eol(parser, p); p++)
    {
        if (*p == '\\')
        {
            set_state(parser, EOL_BACKSLASH);
            return p;
        }
        if (!isspace((unsigned char)*p))
            break;
    }
    pop_state(parser);
    return p;
}
