
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int stream_data ;
typedef int lex_t ;
typedef int json_t ;
typedef int * json_load_callback_t ;
typedef int json_error_t ;
typedef int get_func ;
struct TYPE_4__ {void* arg; int * callback; } ;
typedef TYPE_1__ callback_data_t ;


 scalar_t__ callback_get ;
 int error_set (int *,int *,char*) ;
 int jsonp_error_init (int *,char*) ;
 int lex_close (int *) ;
 scalar_t__ lex_init (int *,int ,size_t,TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * parse_json (int *,size_t,int *) ;

json_t *json_load_callback(json_load_callback_t callback, void *arg, size_t flags, json_error_t *error)
{
    lex_t lex;
    json_t *result;

    callback_data_t stream_data;

    memset(&stream_data, 0, sizeof(stream_data));
    stream_data.callback = callback;
    stream_data.arg = arg;

    jsonp_error_init(error, "<callback>");

    if (callback == ((void*)0)) {
        error_set(error, ((void*)0), "wrong arguments");
        return ((void*)0);
    }

    if(lex_init(&lex, (get_func)callback_get, flags, &stream_data))
        return ((void*)0);

    result = parse_json(&lex, flags, error);

    lex_close(&lex);
    return result;
}
