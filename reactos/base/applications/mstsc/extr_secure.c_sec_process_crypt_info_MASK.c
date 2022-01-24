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
typedef  int /*<<< orphan*/  uint32 ;
typedef  int /*<<< orphan*/  modulus ;
typedef  int /*<<< orphan*/  exponent ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int SEC_EXPONENT_SIZE ; 
 int SEC_MAX_MODULUS_SIZE ; 
 int /*<<< orphan*/  SEC_RANDOM_SIZE ; 
 int /*<<< orphan*/  g_client_random ; 
 int /*<<< orphan*/  g_sec_crypted_random ; 
 int /*<<< orphan*/  g_server_public_key_len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(STREAM s)
{
	uint8 *server_random = NULL;
	uint8 modulus[SEC_MAX_MODULUS_SIZE];
	uint8 exponent[SEC_EXPONENT_SIZE];
	uint32 rc4_key_size;

	FUNC2(modulus, 0, sizeof(modulus));
	FUNC2(exponent, 0, sizeof(exponent));
	if (!FUNC4(s, &rc4_key_size, &server_random, modulus, exponent))
	{
		FUNC0(("Failed to parse crypt info\n"));
		return;
	}
	FUNC0(("Generating client random\n"));
	FUNC1(g_client_random);
	FUNC5(g_sec_crypted_random, g_client_random, SEC_RANDOM_SIZE,
			g_server_public_key_len, modulus, exponent);
	FUNC3(g_client_random, server_random, rc4_key_size);
}