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
struct netpath_vars {int /*<<< orphan*/ * netpath; int /*<<< orphan*/ * netpath_start; int /*<<< orphan*/ * nc_handlep; int /*<<< orphan*/ * ncp_list; int /*<<< orphan*/  valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETPATH ; 
 int /*<<< orphan*/  NP_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct netpath_vars*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (char*) ; 

void *
FUNC8()
{

    struct netpath_vars *np_sessionp;   /* this session's variables */
    char *npp;				/* NETPATH env variable */

#ifdef MEM_CHK
    malloc_debug(1);
#endif

    if ((np_sessionp =
	(struct netpath_vars *)FUNC3(sizeof (struct netpath_vars))) == NULL) {
	return (NULL);
    }
    if ((np_sessionp->nc_handlep = FUNC5()) == NULL) {
	//syslog (LOG_ERR, "rpc: failed to open " NETCONFIG);
	return (NULL);
    }
    np_sessionp->valid = NP_VALID;
    np_sessionp->ncp_list = NULL;
    if ((npp = FUNC2(NETPATH)) == NULL) {
	np_sessionp->netpath = NULL;
    } else {
	(void) FUNC0(np_sessionp->nc_handlep);/* won't need nc session*/
	np_sessionp->nc_handlep = NULL;
	if ((np_sessionp->netpath = FUNC3(FUNC7(npp)+1)) == NULL) {
	    FUNC1(np_sessionp);
	    return (NULL);
	} else {
	    (void) FUNC6(np_sessionp->netpath, npp);
	}
    }
    np_sessionp->netpath_start = np_sessionp->netpath;
    return ((void *)np_sessionp);
}