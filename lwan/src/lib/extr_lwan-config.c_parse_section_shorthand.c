
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int items; } ;
struct config_line {int type; } ;


 int CONFIG_LINE_TYPE_SECTION_END ;
 scalar_t__ config_ring_buffer_try_put (int *,struct config_line*) ;
 void* parse_section (struct parser*) ;

__attribute__((used)) static void *parse_section_shorthand(struct parser *parser)
{
    void *next_state = parse_section(parser);

    if (next_state) {
        struct config_line line = {.type = CONFIG_LINE_TYPE_SECTION_END};

        if (config_ring_buffer_try_put(&parser->items, &line))
            return next_state;
    }

    return ((void*)0);
}
