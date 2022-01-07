
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t stack_top; TYPE_1__* stack; } ;
typedef TYPE_2__ json_stream ;
typedef enum json_type { ____Placeholder_json_type } json_type ;
struct TYPE_5__ {int type; } ;


 int JSON_ARRAY ;
 int JSON_ARRAY_END ;
 int JSON_ERROR ;
 int JSON_OBJECT_END ;
 int json_error (TYPE_2__*,char*,int) ;

__attribute__((used)) static enum json_type
pop(json_stream *json, int c, enum json_type expected)
{
    if (json->stack == ((void*)0) || json->stack[json->stack_top].type != expected) {
        json_error(json, "unexpected byte, '%c'", c);
        return JSON_ERROR;
    }
    json->stack_top--;
    return expected == JSON_ARRAY ? JSON_ARRAY_END : JSON_OBJECT_END;
}
