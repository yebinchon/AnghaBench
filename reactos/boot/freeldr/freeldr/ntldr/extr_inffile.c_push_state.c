
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser {int* stack; int stack_pos; } ;
typedef enum parser_state { ____Placeholder_parser_state } parser_state ;



__attribute__((used)) __inline static void push_state(struct parser *parser, enum parser_state state)
{

    parser->stack[parser->stack_pos++] = state;
}
