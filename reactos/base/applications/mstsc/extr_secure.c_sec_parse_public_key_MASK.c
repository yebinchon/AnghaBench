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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 scalar_t__ SEC_EXPONENT_SIZE ; 
 scalar_t__ SEC_MAX_MODULUS_SIZE ; 
 scalar_t__ SEC_MODULUS_SIZE ; 
 scalar_t__ SEC_PADDING_SIZE ; 
 scalar_t__ SEC_RSA_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ g_server_public_key_len ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RD_BOOL
FUNC5(STREAM s, uint8 * modulus, uint8 * exponent)
{
	uint32 magic, modulus_len;

	FUNC1(s, magic);
	if (magic != SEC_RSA_MAGIC)
	{
		FUNC0("RSA magic 0x%x\n", magic);
		return False;
	}

	FUNC1(s, modulus_len);
	modulus_len -= SEC_PADDING_SIZE;
	if ((modulus_len < SEC_MODULUS_SIZE) || (modulus_len > SEC_MAX_MODULUS_SIZE))
	{
		FUNC0("Bad server public key size (%u bits)\n", modulus_len * 8);
		return False;
	}

	FUNC3(s, 8);	/* modulus_bits, unknown */
	FUNC2(s, exponent, SEC_EXPONENT_SIZE);
	FUNC2(s, modulus, modulus_len);
	FUNC3(s, SEC_PADDING_SIZE);
	g_server_public_key_len = modulus_len;

	return FUNC4(s);
}