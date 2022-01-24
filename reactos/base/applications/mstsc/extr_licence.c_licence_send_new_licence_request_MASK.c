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
typedef  char uint8 ;
typedef  int /*<<< orphan*/  uint32 ;
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int BB_CLIENT_MACHINE_NAME_BLOB ; 
 int BB_CLIENT_USER_NAME_BLOB ; 
 int LICENCE_TAG_NEW_LICENCE_REQUEST ; 
 scalar_t__ RDP_V5 ; 
 int /*<<< orphan*/  SEC_LICENSE_PKT ; 
 int SEC_MODULUS_SIZE ; 
 int SEC_PADDING_SIZE ; 
 int SEC_RANDOM_SIZE ; 
 scalar_t__ g_rdp_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(uint8 * client_random, uint8 * rsa_data, char *user, char *host)
{
	uint32 sec_flags = SEC_LICENSE_PKT;
	uint16 userlen = FUNC9(user) + 1;
	uint16 hostlen = FUNC9(host) + 1;
	uint16 length =
		24 + SEC_RANDOM_SIZE + SEC_MODULUS_SIZE + SEC_PADDING_SIZE + userlen + hostlen;
	STREAM s;

	s = FUNC7(sec_flags, length + 2);

	FUNC3(s, LICENCE_TAG_NEW_LICENCE_REQUEST);
	FUNC3(s, ((g_rdp_version >= RDP_V5) ? 3 : 2));	/* version */
	FUNC1(s, length);

	FUNC2(s, 1);	// KEY_EXCHANGE_ALG_RSA
	FUNC0(s, 0);
	FUNC1(s, 0xff01);

	FUNC4(s, client_random, SEC_RANDOM_SIZE);
	FUNC1(s, 2);
	FUNC1(s, (SEC_MODULUS_SIZE + SEC_PADDING_SIZE));
	FUNC4(s, rsa_data, SEC_MODULUS_SIZE);
	FUNC5(s, SEC_PADDING_SIZE);

	/* Username LICENSE_BINARY_BLOB */
	FUNC1(s, BB_CLIENT_USER_NAME_BLOB);
	FUNC1(s, userlen);
	FUNC4(s, user, userlen);

	/* Machinename LICENSE_BINARY_BLOB */
	FUNC1(s, BB_CLIENT_MACHINE_NAME_BLOB);
	FUNC1(s, hostlen);
	FUNC4(s, host, hostlen);

	FUNC6(s);
	FUNC8(s, sec_flags);
}