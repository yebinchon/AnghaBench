
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {char* data; int data_size; } ;
typedef char WCHAR ;


 int LINE_START ;
 int SET_VALUE ;
 int free_parser_data (struct parser*) ;
 int lstrlenW (char*) ;
 int set_state (struct parser*,int ) ;
 int unescape_string (char*,char**) ;

__attribute__((used)) static WCHAR *string_data_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *line;

    parser->data = pos;

    if (!unescape_string(parser->data, &line))
        goto invalid;

    while (*line == ' ' || *line == '\t') line++;
    if (*line && *line != ';') goto invalid;

    parser->data_size = (lstrlenW(parser->data) + 1) * sizeof(WCHAR);

    set_state(parser, SET_VALUE);
    return line;

invalid:
    free_parser_data(parser);
    set_state(parser, LINE_START);
    return line;
}
