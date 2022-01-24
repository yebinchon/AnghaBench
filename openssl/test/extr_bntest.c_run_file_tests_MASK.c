#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ numpairs; int errors; int /*<<< orphan*/  numtests; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ STANZA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 char* FUNC7 (int) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 

__attribute__((used)) static int FUNC10(int i)
{
    STANZA *s = NULL;
    char *testfile = FUNC7(i);
    int c;

    if (!FUNC3(s = FUNC2(sizeof(*s))))
        return 0;
    if (!FUNC9(s, testfile)) {
        FUNC1(s);
        return 0;
    }

    /* Read test file. */
    while (!FUNC0(s->fp) && FUNC8(s)) {
        if (s->numpairs == 0)
            continue;
        if (!FUNC4(s))
            s->errors++;
        s->numtests++;
        FUNC5(s);
    }
    FUNC6(s);
    c = s->errors;
    FUNC1(s);

    return c == 0;
}