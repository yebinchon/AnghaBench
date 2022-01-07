
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ backslash; } ;
typedef int WCHAR ;


 int EOL_BACKSLASH ;
 int LINE_START ;
 int SET_VALUE ;
 int convert_hex_csv_to_hex (struct parser*,int **) ;
 int free_parser_data (struct parser*) ;
 int prepare_hex_string_data (struct parser*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *hex_data_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *line = pos;

    if (!*line)
        goto set_value;

    if (!convert_hex_csv_to_hex(parser, &line))
        goto invalid;

    if (parser->backslash)
    {
        set_state(parser, EOL_BACKSLASH);
        return line;
    }

    prepare_hex_string_data(parser);

set_value:
    set_state(parser, SET_VALUE);
    return line;

invalid:
    free_parser_data(parser);
    set_state(parser, LINE_START);
    return line;
}
