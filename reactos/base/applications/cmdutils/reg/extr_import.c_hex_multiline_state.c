
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int file; } ;
typedef char WCHAR ;


 int HEX_DATA ;
 int LINE_START ;
 int SET_VALUE ;
 int free_parser_data (struct parser*) ;
 char* get_line (int ) ;
 int isxdigitW (char) ;
 int prepare_hex_string_data (struct parser*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *hex_multiline_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *line;

    if (!(line = get_line(parser->file)))
    {
        prepare_hex_string_data(parser);
        set_state(parser, SET_VALUE);
        return pos;
    }

    while (*line == ' ' || *line == '\t') line++;
    if (!*line || *line == ';') return line;

    if (!isxdigitW(*line)) goto invalid;

    set_state(parser, HEX_DATA);
    return line;

invalid:
    free_parser_data(parser);
    set_state(parser, LINE_START);
    return line;
}
