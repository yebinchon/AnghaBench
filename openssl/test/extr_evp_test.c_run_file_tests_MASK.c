#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int errors; int /*<<< orphan*/  key; int /*<<< orphan*/  numskip; int /*<<< orphan*/  fp; } ;
struct TYPE_10__ {TYPE_2__ s; scalar_t__ skip; } ;
typedef  TYPE_1__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  private_keys ; 
 int /*<<< orphan*/  public_keys ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,char const*) ; 

__attribute__((used)) static int FUNC12(int i)
{
    EVP_TEST *t;
    const char *testfile = FUNC10(i);
    int c;

    if (!FUNC4(t = FUNC3(sizeof(*t))))
        return 0;
    if (!FUNC11(&t->s, testfile)) {
        FUNC2(t);
        return 0;
    }

    while (!FUNC0(t->s.fp)) {
        c = FUNC7(t);
        if (t->skip) {
            t->s.numskip++;
            continue;
        }
        if (c == 0 || !FUNC8(t)) {
            t->s.errors++;
            break;
        }
    }
    FUNC9(&t->s);
    FUNC5(t);

    FUNC6(public_keys);
    FUNC6(private_keys);
    FUNC1(t->s.key);
    c = t->s.errors;
    FUNC2(t);
    return c == 0;
}