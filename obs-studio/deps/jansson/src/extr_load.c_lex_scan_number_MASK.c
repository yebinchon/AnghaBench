#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {double real; scalar_t__ integer; } ;
struct TYPE_14__ {int length; } ;
struct TYPE_13__ {int flags; TYPE_1__ value; int /*<<< orphan*/  token; TYPE_3__ saved_text; } ;
typedef  TYPE_2__ lex_t ;
typedef  scalar_t__ json_int_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 scalar_t__ ERANGE ; 
 int JSON_DECODE_INT_AS_REAL ; 
 int /*<<< orphan*/  TOKEN_INTEGER ; 
 int /*<<< orphan*/  TOKEN_INVALID ; 
 int /*<<< orphan*/  TOKEN_REAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,char*) ; 
 scalar_t__ FUNC2 (char const*,char**,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*,double*) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 char* FUNC10 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC11(lex_t *lex, int c, json_error_t *error)
{
    const char *saved_text;
    char *end;
    double doubleval;

    lex->token = TOKEN_INVALID;

    if(c == '-')
        c = FUNC6(lex, error);

    if(c == '0') {
        c = FUNC6(lex, error);
        if(FUNC4(c)) {
            FUNC9(lex, c);
            goto out;
        }
    }
    else if(FUNC4(c)) {
        do
            c = FUNC6(lex, error);
        while(FUNC4(c));
    }
    else {
        FUNC9(lex, c);
        goto out;
    }

    if(!(lex->flags & JSON_DECODE_INT_AS_REAL) &&
       c != '.' && c != 'E' && c != 'e')
    {
        json_int_t intval;

        FUNC9(lex, c);

        saved_text = FUNC10(&lex->saved_text);

        errno = 0;
        intval = FUNC2(saved_text, &end, 10);
        if(errno == ERANGE) {
            if(intval < 0)
                FUNC1(error, lex, "too big negative integer");
            else
                FUNC1(error, lex, "too big integer");
            goto out;
        }

        FUNC0(end == saved_text + lex->saved_text.length);

        lex->token = TOKEN_INTEGER;
        lex->value.integer = intval;
        return 0;
    }

    if(c == '.') {
        c = FUNC5(lex, error);
        if(!FUNC4(c)) {
            FUNC8(lex, c);
            goto out;
        }
        FUNC7(lex, c);

        do
            c = FUNC6(lex, error);
        while(FUNC4(c));
    }

    if(c == 'E' || c == 'e') {
        c = FUNC6(lex, error);
        if(c == '+' || c == '-')
            c = FUNC6(lex, error);

        if(!FUNC4(c)) {
            FUNC9(lex, c);
            goto out;
        }

        do
            c = FUNC6(lex, error);
        while(FUNC4(c));
    }

    FUNC9(lex, c);

    if(FUNC3(&lex->saved_text, &doubleval)) {
        FUNC1(error, lex, "real number overflow");
        goto out;
    }

    lex->token = TOKEN_REAL;
    lex->value.real = doubleval;
    return 0;

out:
    return -1;
}