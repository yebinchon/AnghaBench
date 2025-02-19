
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ position; } ;
struct TYPE_13__ {char token; TYPE_1__ stream; scalar_t__ depth; } ;
typedef TYPE_2__ lex_t ;
typedef int json_t ;
struct TYPE_14__ {int position; } ;
typedef TYPE_3__ json_error_t ;


 size_t JSON_DECODE_ANY ;
 size_t JSON_DISABLE_EOF_CHECK ;
 char TOKEN_EOF ;
 int error_set (TYPE_3__*,TYPE_2__*,char*) ;
 int json_decref (int *) ;
 int lex_scan (TYPE_2__*,TYPE_3__*) ;
 int * parse_value (TYPE_2__*,size_t,TYPE_3__*) ;

__attribute__((used)) static json_t *parse_json(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *result;

    lex->depth = 0;

    lex_scan(lex, error);
    if(!(flags & JSON_DECODE_ANY)) {
        if(lex->token != '[' && lex->token != '{') {
            error_set(error, lex, "'[' or '{' expected");
            return ((void*)0);
        }
    }

    result = parse_value(lex, flags, error);
    if(!result)
        return ((void*)0);

    if(!(flags & JSON_DISABLE_EOF_CHECK)) {
        lex_scan(lex, error);
        if(lex->token != TOKEN_EOF) {
            error_set(error, lex, "end of file expected");
            json_decref(result);
            return ((void*)0);
        }
    }

    if(error) {

        error->position = (int)lex->stream.position;
    }

    return result;
}
