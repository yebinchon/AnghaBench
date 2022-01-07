
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lex_t ;
typedef int json_t ;
typedef int json_error_t ;
typedef int get_func ;
typedef int FILE ;


 int error_set (int *,int *,char*) ;
 scalar_t__ fgetc ;
 int jsonp_error_init (int *,char const*) ;
 int lex_close (int *) ;
 scalar_t__ lex_init (int *,int ,size_t,int *) ;
 int * parse_json (int *,size_t,int *) ;
 int * stdin ;

json_t *json_loadf(FILE *input, size_t flags, json_error_t *error)
{
    lex_t lex;
    const char *source;
    json_t *result;

    if(input == stdin)
        source = "<stdin>";
    else
        source = "<stream>";

    jsonp_error_init(error, source);

    if (input == ((void*)0)) {
        error_set(error, ((void*)0), "wrong arguments");
        return ((void*)0);
    }

    if(lex_init(&lex, (get_func)fgetc, flags, input))
        return ((void*)0);

    result = parse_json(&lex, flags, error);

    lex_close(&lex);
    return result;
}
