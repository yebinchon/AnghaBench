
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* data; scalar_t__ pos; } ;
typedef TYPE_1__ string_data_t ;
typedef int lex_t ;
typedef int json_t ;
typedef int json_error_t ;


 int error_set (int *,int *,char*) ;
 int jsonp_error_init (int *,char*) ;
 int lex_close (int *) ;
 scalar_t__ lex_init (int *,int ,size_t,void*) ;
 int * parse_json (int *,size_t,int *) ;
 int string_get ;

json_t *json_loads(const char *string, size_t flags, json_error_t *error)
{
    lex_t lex;
    json_t *result;
    string_data_t stream_data;

    jsonp_error_init(error, "<string>");

    if (string == ((void*)0)) {
        error_set(error, ((void*)0), "wrong arguments");
        return ((void*)0);
    }

    stream_data.data = string;
    stream_data.pos = 0;

    if(lex_init(&lex, string_get, flags, (void *)&stream_data))
        return ((void*)0);

    result = parse_json(&lex, flags, error);

    lex_close(&lex);
    return result;
}
