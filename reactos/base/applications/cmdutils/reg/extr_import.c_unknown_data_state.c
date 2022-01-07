
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int data_type; } ;
typedef int WCHAR ;


 int FIXME (char*,int ) ;
 int LINE_START ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *unknown_data_state(struct parser *parser, WCHAR *pos)
{
    FIXME("Unknown registry data type [0x%x]\n", parser->data_type);

    set_state(parser, LINE_START);
    return pos;
}
