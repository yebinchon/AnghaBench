
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ reg_version; int data_size; int data; int data_type; int value_name; int hkey; } ;
typedef int WCHAR ;


 int LINE_START ;
 int PARSE_WIN31_LINE ;
 scalar_t__ REG_VERSION_31 ;
 int RegSetValueExW (int ,int ,int ,int ,int ,int ) ;
 int free_parser_data (struct parser*) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *set_value_state(struct parser *parser, WCHAR *pos)
{
    RegSetValueExW(parser->hkey, parser->value_name, 0, parser->data_type,
                   parser->data, parser->data_size);

    free_parser_data(parser);

    if (parser->reg_version == REG_VERSION_31)
        set_state(parser, PARSE_WIN31_LINE);
    else
        set_state(parser, LINE_START);

    return pos;
}
