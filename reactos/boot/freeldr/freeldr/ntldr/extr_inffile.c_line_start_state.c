
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int const* start; int line_pos; } ;
typedef int CHAR ;


 int COMMENT ;
 int KEY_NAME ;
 int LINE_START ;
 int SECTION_NAME ;
 int close_current_line (struct parser*) ;
 int is_eof (struct parser*,int const*) ;
 int isspace (unsigned char) ;
 int push_state (struct parser*,int ) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static
const CHAR*
line_start_state(
    struct parser *parser,
    const CHAR *pos)
{
    const CHAR *p;

    for (p = pos; !is_eof(parser, p); p++)
    {
        switch(*p)
        {
        case '\r':
            continue;

        case '\n':
            parser->line_pos++;
            close_current_line(parser);
            break;

        case ';':
            push_state(parser, LINE_START);
            set_state(parser, COMMENT);
            return p + 1;

        case '[':
            parser->start = p + 1;
            set_state(parser, SECTION_NAME);
            return p + 1;

        default:
            if (!isspace((unsigned char)*p))
            {
                parser->start = p;
                set_state(parser, KEY_NAME);
                return p;
            }
            break;
        }
    }
    close_current_line(parser);
    return ((void*)0);
}
