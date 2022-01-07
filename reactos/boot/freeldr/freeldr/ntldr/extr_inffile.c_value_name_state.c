
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int* start; } ;
typedef int CHAR ;


 int COMMENT ;
 int EOL_BACKSLASH ;
 int LEADING_SPACES ;
 int LINE_START ;
 int QUOTES ;
 int TRAILING_SPACES ;
 int VALUE_NAME ;
 int add_field_from_token (struct parser*,int ) ;
 int is_eol (struct parser*,int const*) ;
 int isspace (unsigned char) ;
 int push_state (struct parser*,int ) ;
 int push_token (struct parser*,int const*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static
const CHAR*
value_name_state(
    struct parser *parser,
    const CHAR *pos)
{
    const CHAR *p, *token_end = parser->start;

    for (p = pos; !is_eol(parser, p); p++)
    {
        switch(*p)
        {
        case ';':
            push_token(parser, token_end);
            if (!add_field_from_token(parser, 0)) return ((void*)0);
            push_state(parser, LINE_START);
            set_state(parser, COMMENT);
            return p + 1;
        case ',':
            push_token(parser, token_end);
            if (!add_field_from_token(parser, 0)) return ((void*)0);
            parser->start = p + 1;
            push_state(parser, VALUE_NAME);
            set_state(parser, LEADING_SPACES);
            return p + 1;
        case '"':
            push_token(parser, token_end);
            parser->start = p + 1;
            push_state(parser, VALUE_NAME);
            set_state(parser, QUOTES);
            return p + 1;
        case '\\':
            push_token(parser, token_end);
            parser->start = p;
            push_state(parser, VALUE_NAME);
            set_state(parser, EOL_BACKSLASH);
            return p;
        default:
            if (!isspace((unsigned char)*p)) token_end = p + 1;
            else
            {
                push_token(parser, p);
                push_state(parser, VALUE_NAME);
                set_state(parser, TRAILING_SPACES);
                return p;
            }
            break;
        }
    }
    push_token(parser, token_end);
    if (!add_field_from_token(parser, 0)) return ((void*)0);
    set_state(parser, LINE_START);
    return p;
}
