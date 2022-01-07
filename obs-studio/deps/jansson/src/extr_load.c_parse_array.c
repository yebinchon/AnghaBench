
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char token; } ;
typedef TYPE_1__ lex_t ;
typedef int json_t ;
typedef int json_error_t ;


 int error_set (int *,TYPE_1__*,char*) ;
 int * json_array () ;
 scalar_t__ json_array_append (int *,int *) ;
 int json_decref (int *) ;
 int lex_scan (TYPE_1__*,int *) ;
 int * parse_value (TYPE_1__*,size_t,int *) ;

__attribute__((used)) static json_t *parse_array(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *array = json_array();
    if(!array)
        return ((void*)0);

    lex_scan(lex, error);
    if(lex->token == ']')
        return array;

    while(lex->token) {
        json_t *elem = parse_value(lex, flags, error);
        if(!elem)
            goto error;

        if(json_array_append(array, elem)) {
            json_decref(elem);
            goto error;
        }
        json_decref(elem);

        lex_scan(lex, error);
        if(lex->token != ',')
            break;

        lex_scan(lex, error);
    }

    if(lex->token != ']') {
        error_set(error, lex, "']' expected");
        goto error;
    }

    return array;

error:
    json_decref(array);
    return ((void*)0);
}
