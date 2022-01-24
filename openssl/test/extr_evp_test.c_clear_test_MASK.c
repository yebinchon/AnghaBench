#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* meth; scalar_t__ skip; int /*<<< orphan*/ * err; int /*<<< orphan*/ * reason; int /*<<< orphan*/ * expected_err; int /*<<< orphan*/ * data; int /*<<< orphan*/  s; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* cleanup ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(EVP_TEST *t)
{
    FUNC3(&t->s);
    FUNC0();
    if (t->data != NULL) {
        if (t->meth != NULL)
            t->meth->cleanup(t);
        FUNC1(t->data);
        t->data = NULL;
    }
    FUNC1(t->expected_err);
    t->expected_err = NULL;
    FUNC1(t->reason);
    t->reason = NULL;

    /* Text literal. */
    t->err = NULL;
    t->skip = 0;
    t->meth = NULL;
}