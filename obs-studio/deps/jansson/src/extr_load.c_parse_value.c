
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* val; size_t len; } ;
struct TYPE_9__ {int real; int integer; TYPE_1__ string; } ;
struct TYPE_10__ {scalar_t__ depth; int token; TYPE_2__ value; } ;
typedef TYPE_3__ lex_t ;
typedef int json_t ;
typedef int json_error_t ;


 size_t JSON_ALLOW_NUL ;
 scalar_t__ JSON_PARSER_MAX_DEPTH ;







 int error_set (int *,TYPE_3__*,char*) ;
 int * json_false () ;
 int * json_integer (int ) ;
 int * json_null () ;
 int * json_real (int ) ;
 int * json_true () ;
 int * jsonp_stringn_nocheck_own (char const*,size_t) ;
 int memchr (char const*,char,size_t) ;
 int * parse_array (TYPE_3__*,size_t,int *) ;
 int * parse_object (TYPE_3__*,size_t,int *) ;

__attribute__((used)) static json_t *parse_value(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *json;

    lex->depth++;
    if(lex->depth > JSON_PARSER_MAX_DEPTH) {
        error_set(error, lex, "maximum parsing depth reached");
        return ((void*)0);
    }

    switch(lex->token) {
        case 129: {
            const char *value = lex->value.string.val;
            size_t len = lex->value.string.len;

            if(!(flags & JSON_ALLOW_NUL)) {
                if(memchr(value, '\0', len)) {
                    error_set(error, lex, "\\u0000 is not allowed without JSON_ALLOW_NUL");
                    return ((void*)0);
                }
            }

            json = jsonp_stringn_nocheck_own(value, len);
            if(json) {
                lex->value.string.val = ((void*)0);
                lex->value.string.len = 0;
            }
            break;
        }

        case 133: {
            json = json_integer(lex->value.integer);
            break;
        }

        case 130: {
            json = json_real(lex->value.real);
            break;
        }

        case 128:
            json = json_true();
            break;

        case 134:
            json = json_false();
            break;

        case 131:
            json = json_null();
            break;

        case '{':
            json = parse_object(lex, flags, error);
            break;

        case '[':
            json = parse_array(lex, flags, error);
            break;

        case 132:
            error_set(error, lex, "invalid token");
            return ((void*)0);

        default:
            error_set(error, lex, "unexpected token");
            return ((void*)0);
    }

    if(!json)
        return ((void*)0);

    lex->depth--;
    return json;
}
