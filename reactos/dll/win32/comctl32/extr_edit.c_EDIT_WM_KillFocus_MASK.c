#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int style; int /*<<< orphan*/  hwndSelf; scalar_t__ wheelDeltaRemainder; int /*<<< orphan*/  selection_end; int /*<<< orphan*/  selection_start; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ HTHEME ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EF_FOCUSED ; 
 int /*<<< orphan*/  EN_KILLFOCUS ; 
 int ES_NOHIDESEL ; 
 int RDW_FRAME ; 
 int RDW_INVALIDATE ; 
 int RDW_UPDATENOW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static LRESULT FUNC4(HTHEME theme, EDITSTATE *es)
{
    UINT flags = RDW_INVALIDATE | RDW_UPDATENOW;

    es->flags &= ~EF_FOCUSED;
    FUNC0();
    if (!(es->style & ES_NOHIDESEL))
        FUNC1(es, es->selection_start, es->selection_end);
    FUNC2(es, EN_KILLFOCUS);
    /* Throw away left over scroll when we lose focus */
    es->wheelDeltaRemainder = 0;

    if (theme)
        flags |= RDW_FRAME;

    FUNC3(es->hwndSelf, NULL, NULL, flags);
    return 0;
}