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
typedef  int uint32 ;
typedef  int /*<<< orphan*/  signature ;
typedef  int /*<<< orphan*/  STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SEC_EXPONENT_SIZE ; 
 int SEC_MAX_MODULUS_SIZE ; 
 int /*<<< orphan*/  SEC_MODULUS_SIZE ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  g_server_public_key_len ; 
 scalar_t__ g_testkey ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static RD_BOOL
FUNC5(STREAM s, uint32 len, uint8 * modulus, uint8 * exponent)
{
	uint8 signature[SEC_MAX_MODULUS_SIZE];
	uint8 signature_[SEC_MAX_MODULUS_SIZE];
	uint32 sig_len;

	if (len != 72)
	{
		return True;
	}
	FUNC2(signature, 0, sizeof(signature));
	sig_len = len - 8;
	FUNC1(s, signature, sig_len);
    if(FUNC3((char *)exponent, SEC_EXPONENT_SIZE, (char *)modulus, g_server_public_key_len,
                     (char *)signature_, SEC_MODULUS_SIZE, (char *)signature, sig_len, (char *)g_testkey))
    {
        FUNC0(("key signature doesn't match test key\n"));
    }
	return FUNC4(s);
}