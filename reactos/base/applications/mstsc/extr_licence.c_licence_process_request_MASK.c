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
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  null_data ;
typedef  int /*<<< orphan*/  hwid ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int LICENCE_HWID_SIZE ; 
 int LICENCE_SIGNATURE_SIZE ; 
 int /*<<< orphan*/  LICENCE_TAG_LICENCE_INFO ; 
 int /*<<< orphan*/  LICENCE_TAG_NEW_LICENCE_REQUEST ; 
 int SEC_MODULUS_SIZE ; 
 int /*<<< orphan*/  SEC_RANDOM_SIZE ; 
 int /*<<< orphan*/  g_hostname ; 
 scalar_t__ g_licence_key ; 
 int /*<<< orphan*/  g_licence_sign_key ; 
 int /*<<< orphan*/  g_username ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,char*,int) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(STREAM s)
{
	uint8 null_data[SEC_MODULUS_SIZE];
	uint8 *server_random;
	uint8 signature[LICENCE_SIGNATURE_SIZE];
	uint8 hwid[LICENCE_HWID_SIZE];
	uint8 *licence_data;
	int licence_size;
	void * crypt_key;

	/* Retrieve the server random from the incoming packet */
	FUNC1(s, server_random, SEC_RANDOM_SIZE);

	/* We currently use null client keys. This is a bit naughty but, hey,
	   the security of licence negotiation isn't exactly paramount. */
	FUNC7(null_data, 0, sizeof(null_data));
	FUNC3(null_data, server_random, null_data);

	licence_size = FUNC6(&licence_data);
	if (licence_size > 0)
	{
		/* Generate a signature for the HWID buffer */
		FUNC2(hwid);
		FUNC12(signature, 16, g_licence_sign_key, 16, hwid, sizeof(hwid));

		/* Now encrypt the HWID */
		crypt_key = FUNC9();
		FUNC11(crypt_key, (char *)g_licence_key, 16);
		FUNC8(crypt_key, (char *)hwid, (char *)hwid, sizeof(hwid));
		FUNC10(crypt_key);

#if WITH_DEBUG
		DEBUG(("Sending licensing PDU (message type 0x%02x)\n", LICENCE_TAG_LICENCE_INFO));
#endif
		FUNC4(null_data, null_data, licence_data, licence_size, hwid, signature);

		FUNC13(licence_data);
		return;
	}

#if WITH_DEBUG
	DEBUG(("Sending licensing PDU (message type 0x%02x)\n", LICENCE_TAG_NEW_LICENCE_REQUEST));
#endif
	FUNC5(null_data, null_data, g_username, g_hostname);
}