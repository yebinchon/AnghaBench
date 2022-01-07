
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct json_stack {int type; scalar_t__ count; } ;
struct TYPE_5__ {scalar_t__ (* realloc ) (struct json_stack*,int) ;} ;
struct TYPE_6__ {int stack_top; int stack_size; struct json_stack* stack; TYPE_1__ alloc; } ;
typedef TYPE_2__ json_stream ;
typedef enum json_type { ____Placeholder_json_type } json_type ;


 int JSON_ERROR ;
 int STACK_INC ;
 int errno ;
 int json_error_s (TYPE_2__*,int ) ;
 scalar_t__ stub1 (struct json_stack*,int) ;

__attribute__((used)) static enum json_type
push(json_stream *json, enum json_type type)
{
    json->stack_top++;

    if (json->stack_top >= json->stack_size) {
        struct json_stack *stack;
        stack = (struct json_stack *) json->alloc.realloc(json->stack,
                (json->stack_size + STACK_INC) * sizeof(*json->stack));
        if (stack == ((void*)0)) {
            json_error_s(json, errno);
            return JSON_ERROR;
        }

        json->stack_size += STACK_INC;
        json->stack = stack;
    }

    json->stack[json->stack_top].type = type;
    json->stack[json->stack_top].count = 0;

    return type;
}
