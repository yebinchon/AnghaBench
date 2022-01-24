#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  writeflags; int /*<<< orphan*/  readflags; int /*<<< orphan*/ * innerloopsizeptr; int /*<<< orphan*/ * innerstrides; int /*<<< orphan*/  operands; int /*<<< orphan*/  dtypes; int /*<<< orphan*/  dataptrs; int /*<<< orphan*/ * get_multi_index; int /*<<< orphan*/ * iternext; int /*<<< orphan*/ * iter; } ;
typedef  int /*<<< orphan*/  NpyIter ;
typedef  TYPE_1__ NewNpyArrayIterObject ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(NewNpyArrayIterObject *self)
{
    NpyIter *iter = self->iter;

    /* iternext and get_multi_index functions */
    self->iternext = FUNC5(iter, NULL);
    if (self->iternext == NULL) {
        return -1;
    }

    if (FUNC11(iter) && !FUNC9(iter)) {
        self->get_multi_index = FUNC2(iter, NULL);
    }
    else {
        self->get_multi_index = NULL;
    }

    /* Internal data pointers */
    self->dataptrs = FUNC0(iter);
    self->dtypes = FUNC1(iter);
    self->operands = FUNC6(iter);

    if (FUNC10(iter)) {
        self->innerstrides = FUNC4(iter);
        self->innerloopsizeptr = FUNC3(iter);
    }
    else {
        self->innerstrides = NULL;
        self->innerloopsizeptr = NULL;
    }

    /* The read/write settings */
    FUNC7(iter, self->readflags);
    FUNC8(iter, self->writeflags);
    return 0;
}