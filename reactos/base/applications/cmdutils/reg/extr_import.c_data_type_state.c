
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int parse_type; } ;
typedef int WCHAR ;


 int DWORD_DATA ;
 int HEX_DATA ;
 int LINE_START ;



 int STRING_DATA ;
 int UNKNOWN_DATA ;
 int parse_data_type (struct parser*,int **) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *data_type_state(struct parser *parser, WCHAR *pos)
{
    WCHAR *line = pos;

    if (!parse_data_type(parser, &line))
    {
        set_state(parser, LINE_START);
        return line;
    }

    switch (parser->parse_type)
    {
    case 128:
        set_state(parser, STRING_DATA);
        break;
    case 129:
        set_state(parser, DWORD_DATA);
        break;
    case 130:
        set_state(parser, HEX_DATA);
        break;
    default:
        set_state(parser, UNKNOWN_DATA);
    }

    return line;
}
