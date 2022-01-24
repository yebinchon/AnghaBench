#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int style; size_t nb_items; size_t item_height; int /*<<< orphan*/  self; TYPE_1__* items; } ;
struct TYPE_7__ {size_t height; } ;
typedef  int LRESULT ;
typedef  TYPE_2__ LB_DESCR ;
typedef  size_t INT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_INVALID_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int LBS_OWNERDRAWVARIABLE ; 
 int LB_ERR ; 
 int LB_OKAY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 size_t MAXBYTE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t,...) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static LRESULT FUNC6( LB_DESCR *descr, INT index, INT height, BOOL repaint )
{
    if (height > MAXBYTE)
        return -1;

    if (!height) height = 1;

    if (descr->style & LBS_OWNERDRAWVARIABLE)
    {
        if ((index < 0) || (index >= descr->nb_items))
        {
            FUNC4(ERROR_INVALID_INDEX);
            return LB_ERR;
        }
        FUNC5("[%p]: item %d height = %d\n", descr->self, index, height );
        descr->items[index].height = height;
        FUNC3( descr );
	if (repaint)
	    FUNC1( descr, index );
    }
    else if (height != descr->item_height)
    {
        FUNC5("[%p]: new height = %d\n", descr->self, height );
        descr->item_height = height;
        FUNC2( descr );
        FUNC3( descr );
	if (repaint)
	    FUNC0( descr->self, 0, TRUE );
    }
    return LB_OKAY;
}