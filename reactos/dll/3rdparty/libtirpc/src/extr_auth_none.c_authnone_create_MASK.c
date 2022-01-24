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
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_3__ {int /*<<< orphan*/  ah_verf; int /*<<< orphan*/  ah_cred; int /*<<< orphan*/  ah_ops; } ;
struct authnone_private {TYPE_1__ no_client; int /*<<< orphan*/  mcnt; int /*<<< orphan*/  marshalled_client; } ;
typedef  int /*<<< orphan*/  mutex_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  TYPE_1__ AUTH ;

/* Variables and functions */
 scalar_t__ MAX_MARSHAL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _null_auth ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct authnone_private* authnone_private ; 
 scalar_t__ FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

AUTH *
FUNC8()
{
	struct authnone_private *ap = authnone_private;
	XDR xdr_stream;
	XDR *xdrs;
	extern mutex_t authnone_lock;

	FUNC4(&authnone_lock);
	if (ap == 0) {
		ap = (struct authnone_private *)FUNC3(1, sizeof (*ap));
		if (ap == 0) {
			FUNC5(&authnone_lock);
			return (0);
		}
		authnone_private = ap;
	}
	if (!ap->mcnt) {
		ap->no_client.ah_cred = ap->no_client.ah_verf = _null_auth;
		ap->no_client.ah_ops = FUNC2();
		xdrs = &xdr_stream;
		FUNC7(xdrs, ap->marshalled_client,
		    (u_int)MAX_MARSHAL_SIZE, XDR_ENCODE);
		(void)FUNC6(xdrs, &ap->no_client.ah_cred);
		(void)FUNC6(xdrs, &ap->no_client.ah_verf);
		ap->mcnt = FUNC1(xdrs);
		FUNC0(xdrs);
	}
	FUNC5(&authnone_lock);
	return (&ap->no_client);
}