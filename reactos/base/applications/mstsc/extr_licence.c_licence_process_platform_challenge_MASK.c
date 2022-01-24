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
typedef  int /*<<< orphan*/  sealed_buffer ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int LICENCE_HWID_SIZE ; 
 int LICENCE_SIGNATURE_SIZE ; 
 int LICENCE_TOKEN_SIZE ; 
 scalar_t__ g_licence_key ; 
 int /*<<< orphan*/  g_licence_sign_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,char*,int) ; 
 void* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC9(STREAM s)
{
	uint8 *in_token = NULL, *in_sig;
	uint8 out_token[LICENCE_TOKEN_SIZE], decrypt_token[LICENCE_TOKEN_SIZE];
	uint8 hwid[LICENCE_HWID_SIZE], crypt_hwid[LICENCE_HWID_SIZE];
	uint8 sealed_buffer[LICENCE_TOKEN_SIZE + LICENCE_HWID_SIZE];
	uint8 out_sig[LICENCE_SIGNATURE_SIZE];
	void * crypt_key;

	/* Parse incoming packet and save the encrypted token */
	FUNC1(s, &in_token, &in_sig);
	FUNC3(out_token, in_token, LICENCE_TOKEN_SIZE);

	/* Decrypt the token. It should read TEST in Unicode. */
	crypt_key = FUNC5();
	FUNC7(crypt_key, (char *)g_licence_key, 16);
	FUNC4(crypt_key, (char *)in_token, (char *)decrypt_token, LICENCE_TOKEN_SIZE);
	FUNC6(crypt_key);
	
	/* Generate a signature for a buffer of token and HWID */
	FUNC0(hwid);
	FUNC3(sealed_buffer, decrypt_token, LICENCE_TOKEN_SIZE);
	FUNC3(sealed_buffer + LICENCE_TOKEN_SIZE, hwid, LICENCE_HWID_SIZE);
	FUNC8(out_sig, 16, g_licence_sign_key, 16, sealed_buffer, sizeof(sealed_buffer));

	/* Now encrypt the HWID */
	crypt_key = FUNC5();
	FUNC7(crypt_key, (char *)g_licence_key, 16);
	FUNC4(crypt_key, (char *)hwid, (char *)crypt_hwid, LICENCE_HWID_SIZE);

	FUNC2(out_token, crypt_hwid, out_sig);
}