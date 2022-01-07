
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {char* data; int data_size; int data_type; int * value_name; int file; } ;
typedef char WCHAR ;


 int ARRAY_SIZE (char*) ;
 scalar_t__ ERROR_SUCCESS ;
 int REG_SZ ;
 int SET_VALUE ;
 int STRING_OPEN_KEY_FAILED ;
 char* get_line (int ) ;
 int isspaceW (char) ;
 int lstrlenW (char*) ;
 scalar_t__ open_key (struct parser*,char*) ;
 int output_message (int ,char*) ;
 int set_state (struct parser*,int ) ;
 scalar_t__ strncmpW (char*,char*,int ) ;

__attribute__((used)) static WCHAR *parse_win31_line_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *line, *value;
    static WCHAR hkcr[] = {'H','K','E','Y','_','C','L','A','S','S','E','S','_','R','O','O','T'};
    unsigned int key_end = 0;

    if (!(line = get_line(parser->file)))
        return ((void*)0);

    if (strncmpW(line, hkcr, ARRAY_SIZE(hkcr)))
        return line;


    while (line[key_end] && !isspaceW(line[key_end])) key_end++;

    value = line + key_end;
    while (*value == ' ' || *value == '\t') value++;

    if (*value == '=') value++;
    if (*value == ' ') value++;

    line[key_end] = 0;

    if (open_key(parser, line) != ERROR_SUCCESS)
    {
        output_message(STRING_OPEN_KEY_FAILED, line);
        return line;
    }

    parser->value_name = ((void*)0);
    parser->data_type = REG_SZ;
    parser->data = value;
    parser->data_size = (lstrlenW(value) + 1) * sizeof(WCHAR);

    set_state(parser, SET_VALUE);
    return value;
}
