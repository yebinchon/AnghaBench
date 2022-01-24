#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  errors; int /*<<< orphan*/  start; int /*<<< orphan*/  test_file; int /*<<< orphan*/  numskip; int /*<<< orphan*/  numtests; } ;
struct TYPE_9__ {TYPE_2__ s; TYPE_1__* meth; int /*<<< orphan*/ * err; scalar_t__ skip; } ;
struct TYPE_7__ {int (* run_test ) (TYPE_3__*) ;int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC4(EVP_TEST *t)
{
    if (t->meth == NULL)
        return 1;
    t->s.numtests++;
    if (t->skip) {
        t->s.numskip++;
    } else {
        /* run the test */
        if (t->err == NULL && t->meth->run_test(t) != 1) {
            FUNC0("%s:%d %s error",
                      t->s.test_file, t->s.start, t->meth->name);
            return 0;
        }
        if (!FUNC2(t)) {
            FUNC1();
            t->s.errors++;
        }
    }

    /* clean it up */
    return 1;
}