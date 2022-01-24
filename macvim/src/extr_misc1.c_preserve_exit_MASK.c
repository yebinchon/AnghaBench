#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* ml_mfp; } ;
struct TYPE_7__ {TYPE_2__ b_ml; struct TYPE_7__* b_next; } ;
typedef  TYPE_3__ buf_T ;
struct TYPE_5__ {int /*<<< orphan*/ * mf_fname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IObuff ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_3__* firstbuf ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  really_exiting ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9()
{
    buf_T	*buf;

    FUNC7();

    /* Setting this will prevent free() calls.  That avoids calling free()
     * recursively when free() was invoked with a bad pointer. */
    really_exiting = TRUE;

    FUNC6(IObuff);
    FUNC8();		    /* don't know where cursor is now */
    FUNC5();

    FUNC3();		    /* close all not-modified buffers */

    for (buf = firstbuf; buf != NULL; buf = buf->b_next)
    {
	if (buf->b_ml.ml_mfp != NULL && buf->b_ml.ml_mfp->mf_fname != NULL)
	{
	    FUNC0("Vim: preserving files...\n");
	    FUNC8();	    /* don't know where cursor is now */
	    FUNC5();
	    FUNC4(FALSE, FALSE);	/* preserve all swap files */
	    break;
	}
    }

    FUNC2(FALSE);	    /* close all memfiles, without deleting */

    FUNC0("Vim: Finished.\n");

    FUNC1(1);
}