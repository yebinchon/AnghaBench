#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ token; int /*<<< orphan*/  saved_text; } ;
typedef  TYPE_1__ lex_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 int STREAM_STATE_EOF ; 
 int STREAM_STATE_ERROR ; 
 scalar_t__ TOKEN_EOF ; 
 int TOKEN_FALSE ; 
 void* TOKEN_INVALID ; 
 int TOKEN_NULL ; 
 scalar_t__ TOKEN_STRING ; 
 int TOKEN_TRUE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static int FUNC13(lex_t *lex, json_error_t *error)
{
    int c;

    FUNC10(&lex->saved_text);

    if(lex->token == TOKEN_STRING)
        FUNC2(lex);

    do
        c = FUNC3(lex, error);
    while(c == ' ' || c == '\t' || c == '\n' || c == '\r');

    if(c == STREAM_STATE_EOF) {
        lex->token = TOKEN_EOF;
        goto out;
    }

    if(c == STREAM_STATE_ERROR) {
        lex->token = TOKEN_INVALID;
        goto out;
    }

    FUNC5(lex, c);

    if(c == '{' || c == '}' || c == '[' || c == ']' || c == ':' || c == ',')
        lex->token = c;

    else if(c == '"')
        FUNC8(lex, error);

    else if(FUNC1(c) || c == '-') {
        if(FUNC7(lex, c, error))
            goto out;
    }

    else if(FUNC0(c)) {
        /* eat up the whole identifier for clearer error messages */
        const char *saved_text;

        do
            c = FUNC4(lex, error);
        while(FUNC0(c));
        FUNC9(lex, c);

        saved_text = FUNC11(&lex->saved_text);

        if(FUNC12(saved_text, "true") == 0)
            lex->token = TOKEN_TRUE;
        else if(FUNC12(saved_text, "false") == 0)
            lex->token = TOKEN_FALSE;
        else if(FUNC12(saved_text, "null") == 0)
            lex->token = TOKEN_NULL;
        else
            lex->token = TOKEN_INVALID;
    }

    else {
        /* save the rest of the input UTF-8 sequence to get an error
           message of valid UTF-8 */
        FUNC6(lex);
        lex->token = TOKEN_INVALID;
    }

out:
    return lex->token;
}