
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int * value_name; } ;
typedef int WCHAR ;


 int DATA_START ;
 int heap_free (int *) ;
 int set_state (struct parser*,int ) ;

__attribute__((used)) static WCHAR *default_value_name_state(struct parser *parser, WCHAR *pos)
{
    heap_free(parser->value_name);
    parser->value_name = ((void*)0);

    set_state(parser, DATA_START);
    return pos + 1;
}
