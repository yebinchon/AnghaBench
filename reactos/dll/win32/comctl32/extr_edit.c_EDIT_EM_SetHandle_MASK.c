#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_12__ {int style; int buffer_size; int /*<<< orphan*/  flags; scalar_t__ selection_end; scalar_t__ selection_start; scalar_t__ y_offset; scalar_t__ x_offset; int /*<<< orphan*/ * hlocapp; scalar_t__ hloc32W; } ;
typedef  scalar_t__ HLOCAL ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EF_MODIFIED ; 
 int /*<<< orphan*/  EF_UPDATE ; 
 int ES_MULTILINE ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(EDITSTATE *es, HLOCAL hloc)
{
    if (!(es->style & ES_MULTILINE))
        return;

    if (!hloc)
        return;

    FUNC4(es, TRUE);

    es->hloc32W = hloc;
    es->buffer_size = FUNC7(es->hloc32W)/sizeof(WCHAR) - 1;

    /* The text buffer handle belongs to the control */
    es->hlocapp = NULL;

    FUNC3(es);
    FUNC9(es);

    es->x_offset = es->y_offset = 0;
    es->selection_start = es->selection_end = 0;
    FUNC1(es);
    es->flags &= ~EF_MODIFIED;
    es->flags &= ~EF_UPDATE;
    FUNC0(es, 0, FUNC8(es), 0, NULL);
    FUNC6(es, NULL, TRUE);
    FUNC2(es);
    /* force scroll info update */
    FUNC5(es);
}