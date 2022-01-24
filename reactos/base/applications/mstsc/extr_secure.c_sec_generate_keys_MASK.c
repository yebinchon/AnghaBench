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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  g_rc4_decrypt_key ; 
 int /*<<< orphan*/  g_rc4_encrypt_key ; 
 int g_rc4_key_len ; 
 int /*<<< orphan*/ * g_sec_decrypt_key ; 
 int /*<<< orphan*/ * g_sec_decrypt_update_key ; 
 int /*<<< orphan*/ * g_sec_encrypt_key ; 
 int /*<<< orphan*/ * g_sec_encrypt_update_key ; 
 int /*<<< orphan*/ * g_sec_sign_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(uint8 * client_random, uint8 * server_random, int rc4_key_size)
{
	uint8 pre_master_secret[48];
	uint8 master_secret[48];
	uint8 key_block[48];

	/* Construct pre-master secret */
	FUNC1(pre_master_secret, client_random, 24);
	FUNC1(pre_master_secret + 24, server_random, 24);

	/* Generate master secret and then key material */
	FUNC6(master_secret, pre_master_secret, client_random, server_random, 'A');
	FUNC6(key_block, master_secret, client_random, server_random, 'X');

	/* First 16 bytes of key material is MAC secret */
	FUNC1(g_sec_sign_key, key_block, 16);

	/* Generate export keys from next two blocks of 16 bytes */
	FUNC5(g_sec_decrypt_key, &key_block[16], client_random, server_random);
	FUNC5(g_sec_encrypt_key, &key_block[32], client_random, server_random);

	if (rc4_key_size == 1)
	{
		FUNC0(("40-bit encryption enabled\n"));
		FUNC7(g_sec_sign_key);
		FUNC7(g_sec_decrypt_key);
		FUNC7(g_sec_encrypt_key);
		g_rc4_key_len = 8;
	}
	else
	{
		FUNC0(("rc_4_key_size == %d, 128-bit encryption enabled\n", rc4_key_size));
		g_rc4_key_len = 16;
	}

	/* Save initial RC4 keys as update keys */
	FUNC1(g_sec_decrypt_update_key, g_sec_decrypt_key, 16);
	FUNC1(g_sec_encrypt_update_key, g_sec_encrypt_key, 16);

	/* Initialise RC4 state arrays */

    FUNC3(g_rc4_decrypt_key);
	g_rc4_decrypt_key = FUNC2(); 
	FUNC4(g_rc4_decrypt_key, (char *)g_sec_decrypt_key, g_rc4_key_len); 

    FUNC3(g_rc4_encrypt_key);
	g_rc4_encrypt_key = FUNC2(); 
	FUNC4(g_rc4_encrypt_key, (char *)g_sec_encrypt_key, g_rc4_key_len); 
}