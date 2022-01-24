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
struct TYPE_10__ {scalar_t__ numpairs; int /*<<< orphan*/  curr; int /*<<< orphan*/  fp; } ;
typedef  TYPE_1__ STANZA ;
typedef  int /*<<< orphan*/  PARAM_CONVERSION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 char* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*) ; 

__attribute__((used)) static int FUNC11(int i)
{
    STANZA *s;
    PARAM_CONVERSION pc;
    const char *testfile = FUNC8(i);
    int res = 1;

    if (!FUNC3(s = FUNC2(sizeof(*s))))
        return 0;
    if (!FUNC10(s, testfile)) {
        FUNC1(s);
        return 0;
    }

    while (!FUNC0(s->fp)) {
        if (!FUNC9(s)) {
            res = 0;
            goto end;
        }
        if (s->numpairs != 0)
            if (!FUNC4(&pc, s)
                || !FUNC5(&pc, s->curr))
                res = 0;
        FUNC6(s);
    }
end:
    FUNC7(s);
    FUNC1(s);
    return res;
}