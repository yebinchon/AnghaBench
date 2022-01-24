#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char token; } ;
typedef  TYPE_1__ lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 size_t JSON_REJECT_DUPLICATES ; 
 char TOKEN_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (TYPE_1__*,size_t*) ; 
 scalar_t__ FUNC8 (char*,char,size_t) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_t *FUNC10(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *object = FUNC2();
    if(!object)
        return NULL;

    FUNC6(lex, error);
    if(lex->token == '}')
        return object;

    while(1) {
        char *key;
        size_t len;
        json_t *value;

        if(lex->token != TOKEN_STRING) {
            FUNC0(error, lex, "string or '}' expected");
            goto error;
        }

        key = FUNC7(lex, &len);
        if(!key)
            return NULL;
        if (FUNC8(key, '\0', len)) {
            FUNC5(key);
            FUNC0(error, lex, "NUL byte in object key not supported");
            goto error;
        }

        if(flags & JSON_REJECT_DUPLICATES) {
            if(FUNC3(object, key)) {
                FUNC5(key);
                FUNC0(error, lex, "duplicate object key");
                goto error;
            }
        }

        FUNC6(lex, error);
        if(lex->token != ':') {
            FUNC5(key);
            FUNC0(error, lex, "':' expected");
            goto error;
        }

        FUNC6(lex, error);
        value = FUNC9(lex, flags, error);
        if(!value) {
            FUNC5(key);
            goto error;
        }

        if(FUNC4(object, key, value)) {
            FUNC5(key);
            FUNC1(value);
            goto error;
        }

        FUNC1(value);
        FUNC5(key);

        FUNC6(lex, error);
        if(lex->token != ',')
            break;

        FUNC6(lex, error);
    }

    if(lex->token != '}') {
        FUNC0(error, lex, "'}' expected");
        goto error;
    }

    return object;

error:
    FUNC1(object);
    return NULL;
}