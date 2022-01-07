
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int data_size; int data; } ;
typedef int WCHAR ;
typedef int DWORD ;


 int LINE_START ;
 int SET_VALUE ;
 int convert_hex_to_dword (int *,int ) ;
 int free_parser_data (struct parser*) ;
 int heap_xalloc (int) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *dword_data_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *line = pos;

    parser->data = heap_xalloc(sizeof(DWORD));

    if (!convert_hex_to_dword(line, parser->data))
        goto invalid;

    parser->data_size = sizeof(DWORD);

    set_state(parser, SET_VALUE);
    return line;

invalid:
    free_parser_data(parser);
    set_state(parser, LINE_START);
    return line;
}
