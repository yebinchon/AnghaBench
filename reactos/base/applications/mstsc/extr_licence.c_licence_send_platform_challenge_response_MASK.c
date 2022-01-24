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
typedef  int uint16 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 int LICENCE_HWID_SIZE ; 
 int LICENCE_SIGNATURE_SIZE ; 
 int LICENCE_TAG_PLATFORM_CHALLANGE_RESPONSE ; 
 int LICENCE_TOKEN_SIZE ; 
 scalar_t__ RDP_V5 ; 
 int /*<<< orphan*/  SEC_LICENSE_PKT ; 
 scalar_t__ g_rdp_version ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uint8 * token, uint8 * crypt_hwid, uint8 * signature)
{
	uint32 sec_flags = SEC_LICENSE_PKT;
	uint16 length = 58;
	STREAM s;

	s = FUNC4(sec_flags, length + 2);

	FUNC1(s, LICENCE_TAG_PLATFORM_CHALLANGE_RESPONSE);
	FUNC1(s, ((g_rdp_version >= RDP_V5) ? 3 : 2));	/* version */
	FUNC0(s, length);

	FUNC0(s, 1);
	FUNC0(s, LICENCE_TOKEN_SIZE);
	FUNC2(s, token, LICENCE_TOKEN_SIZE);

	FUNC0(s, 1);
	FUNC0(s, LICENCE_HWID_SIZE);
	FUNC2(s, crypt_hwid, LICENCE_HWID_SIZE);

	FUNC2(s, signature, LICENCE_SIGNATURE_SIZE);

	FUNC3(s);
	FUNC5(s, sec_flags);
}