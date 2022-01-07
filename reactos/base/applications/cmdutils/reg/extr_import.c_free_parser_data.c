
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {scalar_t__ parse_type; scalar_t__ data_size; int * data; } ;


 scalar_t__ REG_BINARY ;
 scalar_t__ REG_DWORD ;
 int heap_free (int *) ;

__attribute__((used)) static void free_parser_data(struct parser *parser)
{
    if (parser->parse_type == REG_DWORD || parser->parse_type == REG_BINARY)
        heap_free(parser->data);

    parser->data = ((void*)0);
    parser->data_size = 0;
}
