#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rpcdata {int /*<<< orphan*/ * rpcf; int /*<<< orphan*/  stayopen; scalar_t__ currentlen; int /*<<< orphan*/ * current; } ;

/* Variables and functions */
 scalar_t__ __yp_nomap ; 
 struct rpcdata* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4()
{
	struct rpcdata *d = FUNC0();

	if (d == 0)
		return;
#ifdef	YP
        if (!__yp_nomap && _yp_check(NULL)) {
        	if (d->current && !d->stayopen)
                        free(d->current);
                d->current = NULL;
                d->currentlen = 0;
                return;
        }
        __yp_nomap = 0;
#endif	/* YP */
	if (d->rpcf && !d->stayopen) {
		FUNC2(d->rpcf);
		d->rpcf = NULL;
	}
}