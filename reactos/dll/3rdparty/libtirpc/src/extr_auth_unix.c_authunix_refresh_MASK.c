#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timeval {int /*<<< orphan*/  tv_sec; } ;
struct authunix_parms {int /*<<< orphan*/  aup_time; int /*<<< orphan*/ * aup_gids; int /*<<< orphan*/ * aup_machname; } ;
struct TYPE_11__ {scalar_t__ oa_base; int /*<<< orphan*/  oa_length; } ;
struct audata {TYPE_1__ au_origcred; int /*<<< orphan*/  au_shfaults; } ;
typedef  int bool_t ;
struct TYPE_12__ {int /*<<< orphan*/  x_op; } ;
typedef  TYPE_2__ XDR ;
struct TYPE_13__ {TYPE_1__ ah_cred; } ;
typedef  TYPE_3__ AUTH ;

/* Variables and functions */
 struct audata* FUNC0 (TYPE_3__*) ; 
 int FALSE ; 
 int /*<<< orphan*/  XDR_DECODE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  XDR_FREE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_2__*,struct authunix_parms*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool_t
FUNC8(AUTH *auth, void *dummy)
{
	struct audata *au = FUNC0(auth);
	struct authunix_parms aup;
	struct timeval now;
	XDR xdrs;
	int stat;

	FUNC3(auth != NULL);

	if (auth->ah_cred.oa_base == au->au_origcred.oa_base) {
		/* there is no hope.  Punt */
		return (FALSE);
	}
	au->au_shfaults ++;

	/* first deserialize the creds back into a struct authunix_parms */
	aup.aup_machname = NULL;
	aup.aup_gids = NULL;
	FUNC7(&xdrs, au->au_origcred.oa_base,
	    au->au_origcred.oa_length, XDR_DECODE);
	stat = FUNC6(&xdrs, &aup);
	if (! stat)
		goto done;

	/* update the time and serialize in place */
	(void)FUNC4(&now, NULL);
	aup.aup_time = now.tv_sec;
	xdrs.x_op = XDR_ENCODE;
	FUNC2(&xdrs, 0);
	stat = FUNC6(&xdrs, &aup);
	if (! stat)
		goto done;
	auth->ah_cred = au->au_origcred;
	FUNC5(auth);
done:
	/* free the struct authunix_parms created by deserializing */
	xdrs.x_op = XDR_FREE;
	(void)FUNC6(&xdrs, &aup);
	FUNC1(&xdrs);
	return (stat);
}