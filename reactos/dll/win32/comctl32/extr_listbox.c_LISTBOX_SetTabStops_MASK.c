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
struct TYPE_3__ {int style; size_t nb_tabs; int /*<<< orphan*/  avg_char_width; int /*<<< orphan*/ * tabs; } ;
typedef  int /*<<< orphan*/  LPINT ;
typedef  TYPE_1__ LB_DESCR ;
typedef  size_t INT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_LB_WITHOUT_TABSTOPS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int LBS_USETABSTOPS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC6( LB_DESCR *descr, INT count, LPINT tabs )
{
    INT i;

    if (!(descr->style & LBS_USETABSTOPS))
    {
        FUNC4(ERROR_LB_WITHOUT_TABSTOPS);
        return FALSE;
    }

    FUNC2( FUNC0(), 0, descr->tabs );
    if (!(descr->nb_tabs = count))
    {
        descr->tabs = NULL;
        return TRUE;
    }
    if (!(descr->tabs = FUNC1( FUNC0(), 0,
                                            descr->nb_tabs * sizeof(INT) )))
        return FALSE;
    FUNC5( descr->tabs, tabs, descr->nb_tabs * sizeof(INT) );

    /* convert into "dialog units"*/
    for (i = 0; i < descr->nb_tabs; i++)
        descr->tabs[i] = FUNC3(descr->tabs[i], descr->avg_char_width, 4);

    return TRUE;
}