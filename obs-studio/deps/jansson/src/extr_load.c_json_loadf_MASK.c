#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lex_t ;
typedef  int /*<<< orphan*/  json_t ;
typedef  int /*<<< orphan*/  json_error_t ;
typedef  int /*<<< orphan*/  get_func ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ fgetc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stdin ; 

json_t *FUNC5(FILE *input, size_t flags, json_error_t *error)
{
    lex_t lex;
    const char *source;
    json_t *result;

    if(input == stdin)
        source = "<stdin>";
    else
        source = "<stream>";

    FUNC1(error, source);

    if (input == NULL) {
        FUNC0(error, NULL, "wrong arguments");
        return NULL;
    }

    if(FUNC3(&lex, (get_func)fgetc, flags, input))
        return NULL;

    result = FUNC4(&lex, flags, error);

    FUNC2(&lex);
    return result;
}