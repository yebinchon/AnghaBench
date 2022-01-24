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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  EC_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  ERRCODE_CONFIG_FILE_ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  LOG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSLECDHCurve ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_OP_SINGLE_ECDH_USE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static bool
FUNC8(SSL_CTX *context, bool isServerStart)
{
#ifndef OPENSSL_NO_ECDH
	EC_KEY	   *ecdh;
	int			nid;

	nid = FUNC2(SSLECDHCurve);
	if (!nid)
	{
		FUNC5(isServerStart ? FATAL : LOG,
				(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC7("ECDH: unrecognized curve name: %s", SSLECDHCurve)));
		return false;
	}

	ecdh = FUNC1(nid);
	if (!ecdh)
	{
		FUNC5(isServerStart ? FATAL : LOG,
				(FUNC6(ERRCODE_CONFIG_FILE_ERROR),
				 FUNC7("ECDH: could not create key")));
		return false;
	}

	FUNC3(context, SSL_OP_SINGLE_ECDH_USE);
	FUNC4(context, ecdh);
	FUNC0(ecdh);
#endif

	return true;
}