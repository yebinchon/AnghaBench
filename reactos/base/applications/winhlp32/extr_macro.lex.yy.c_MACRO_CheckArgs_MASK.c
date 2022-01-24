#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  proto; int /*<<< orphan*/  function; int /*<<< orphan*/  integer; scalar_t__ string; } ;

/* Variables and functions */
 int BOOL_FUNCTION ; 
 int INTEGER ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int STRING ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 unsigned int FUNC6 (char const*) ; 
 char const* FUNC7 (int) ; 
 char FUNC8 () ; 
 TYPE_1__ yylval ; 

__attribute__((used)) static int FUNC9(void* pa[], unsigned max, const char* args)
{
    int t;
    unsigned int len = 0, idx = 0;

    FUNC3("Checking %s\n", FUNC5(args));

    if (FUNC8() != '(') {FUNC4("missing (\n");return -1;}

    if (*args)
    {
        len = FUNC6(args);
        for (;;)
        {
            t = FUNC8();
            FUNC3("Got %s <=> %c\n", FUNC5(FUNC7(t)), *args);

            switch (*args)
            {
            case 'S': 
                if (t != STRING)
                {FUNC4("missing S\n");return -1;}
                pa[idx] = (void*)yylval.string;  
                break;
            case 'U':
            case 'I':
                if (t != INTEGER)
                {FUNC4("missing U\n");return -1;}   
                pa[idx] = FUNC0(yylval.integer);
                break;
            case 'B':
                if (t != BOOL_FUNCTION) 
                {FUNC4("missing B\n");return -1;}   
                if (FUNC1(yylval.function, yylval.proto, &pa[idx]) == 0)
                    return -1;
                break;
            default: 
                FUNC4("unexpected %s while args is %c\n", FUNC5(FUNC7(t)), *args);
                return -1;
            }
            idx++;
            if (*++args == '\0') break;
            t = FUNC8();
            if (t == ')') goto CheckArgs_end;
            if (t != ',') {FUNC4("missing ,\n");return -1;}
            if (idx >= max) {FUNC2("stack overflow (%d)\n", max);return -1;}
        }
    }
    if (FUNC8() != ')') {FUNC4("missing )\n");return -1;}

CheckArgs_end:
    while (len > idx) pa[--len] = NULL;
    return idx;
}