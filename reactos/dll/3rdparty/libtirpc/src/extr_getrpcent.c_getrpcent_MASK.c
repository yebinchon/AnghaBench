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
struct rpcent {int dummy; } ;
struct rpcdata {scalar_t__ currentlen; char* line; int /*<<< orphan*/ * rpcf; int /*<<< orphan*/ * current; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 scalar_t__ BUFSIZ ; 
 int /*<<< orphan*/  RPCDB ; 
#define  YPERR_MAP 128 
 int __yp_nomap ; 
 struct rpcdata* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct rpcent* FUNC5 (char*,int) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ **,scalar_t__*,char**,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ **,scalar_t__*,char**,int*) ; 

struct rpcent *
FUNC9()
{
	struct rpcdata *d = FUNC0();
#ifdef	YP
	struct rpcent *hp;
	int reason;
	char *val = NULL;
	int vallen;
#endif

	if (d == 0)
		return(NULL);
#ifdef	YP
        if (!__yp_nomap && _yp_check(&d->domain)) {
                if (d->current == NULL && d->currentlen == 0) {
                        reason = yp_first(d->domain, "rpc.bynumber",
                                          &d->current, &d->currentlen,
                                          &val, &vallen);
                } else {
                        reason = yp_next(d->domain, "rpc.bynumber",
                                         d->current, d->currentlen,
                                         &d->current, &d->currentlen,
                                         &val, &vallen);
                }
                switch(reason) {
                case 0:
                        break;
                case YPERR_MAP:
                        __yp_nomap = 1;
                        goto no_yp;
                        break;
                default:
                        return(0);
                        break;
                }
                val[vallen] = '\0';
                hp = interpret(val, vallen);
                (void) free(val);
                return hp;
        }
no_yp:
#endif	/* YP */
	if (d->rpcf == NULL && (d->rpcf = FUNC3(RPCDB, "r")) == NULL)
		return (NULL);
	/* -1 so there is room to append a \n below */
        if (FUNC2(d->line, BUFSIZ - 1, d->rpcf) == NULL)
		return (NULL);
	return (FUNC5(d->line, FUNC6(d->line)));
}