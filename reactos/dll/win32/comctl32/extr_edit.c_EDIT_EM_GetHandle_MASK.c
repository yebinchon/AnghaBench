#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int style; int /*<<< orphan*/  hlocapp; int /*<<< orphan*/  hloc32W; } ;
typedef  int /*<<< orphan*/  HLOCAL ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int ES_MULTILINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static HLOCAL FUNC3(EDITSTATE *es)
{
    if (!(es->style & ES_MULTILINE))
        return 0;

    FUNC0(es, TRUE);

    /* The text buffer handle belongs to the app */
    es->hlocapp = es->hloc32W;

    FUNC2("Returning %p, LocalSize() = %ld\n", es->hlocapp, FUNC1(es->hlocapp));
    return es->hlocapp;
}