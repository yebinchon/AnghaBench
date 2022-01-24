#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char token; } ;
typedef  TYPE_1__ lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static json_t *FUNC6(lex_t *lex, size_t flags, json_error_t *error)
{
    json_t *array = FUNC1();
    if(!array)
        return NULL;

    FUNC4(lex, error);
    if(lex->token == ']')
        return array;

    while(lex->token) {
        json_t *elem = FUNC5(lex, flags, error);
        if(!elem)
            goto error;

        if(FUNC2(array, elem)) {
            FUNC3(elem);
            goto error;
        }
        FUNC3(elem);

        FUNC4(lex, error);
        if(lex->token != ',')
            break;

        FUNC4(lex, error);
    }

    if(lex->token != ']') {
        FUNC0(error, lex, "']' expected");
        goto error;
    }

    return array;

error:
    FUNC3(array);
    return NULL;
}