#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* val; size_t len; } ;
struct TYPE_9__ {int /*<<< orphan*/  real; int /*<<< orphan*/  integer; TYPE_1__ string; } ;
struct TYPE_10__ {scalar_t__ depth; int token; TYPE_2__ value; } ;
typedef  TYPE_3__ lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 size_t JSON_ALLOW_NUL ; 
 scalar_t__ JSON_PARSER_MAX_DEPTH ; 
#define  TOKEN_FALSE 134 
#define  TOKEN_INTEGER 133 
#define  TOKEN_INVALID 132 
#define  TOKEN_NULL 131 
#define  TOKEN_REAL 130 
#define  TOKEN_STRING 129 
#define  TOKEN_TRUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char,size_t) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_3__*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_t *FUNC10(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *json;

    lex->depth++;
    if(lex->depth > JSON_PARSER_MAX_DEPTH) {
        FUNC0(error, lex, "maximum parsing depth reached");
        return NULL;
    }

    switch(lex->token) {
        case TOKEN_STRING: {
            const char *value = lex->value.string.val;
            size_t len = lex->value.string.len;

            if(!(flags & JSON_ALLOW_NUL)) {
                if(FUNC7(value, '\0', len)) {
                    FUNC0(error, lex, "\\u0000 is not allowed without JSON_ALLOW_NUL");
                    return NULL;
                }
            }

            json = FUNC6(value, len);
            if(json) {
                lex->value.string.val = NULL;
                lex->value.string.len = 0;
            }
            break;
        }

        case TOKEN_INTEGER: {
            json = FUNC2(lex->value.integer);
            break;
        }

        case TOKEN_REAL: {
            json = FUNC4(lex->value.real);
            break;
        }

        case TOKEN_TRUE:
            json = FUNC5();
            break;

        case TOKEN_FALSE:
            json = FUNC1();
            break;

        case TOKEN_NULL:
            json = FUNC3();
            break;

        case '{':
            json = FUNC9(lex, flags, error);
            break;

        case '[':
            json = FUNC8(lex, flags, error);
            break;

        case TOKEN_INVALID:
            FUNC0(error, lex, "invalid token");
            return NULL;

        default:
            FUNC0(error, lex, "unexpected token");
            return NULL;
    }

    if(!json)
        return NULL;

    lex->depth--;
    return json;
}