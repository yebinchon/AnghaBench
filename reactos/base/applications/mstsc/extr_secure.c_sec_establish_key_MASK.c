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
typedef  scalar_t__ uint32 ;
typedef  int /*<<< orphan*/  STREAM ;

/* Variables and functions */
 scalar_t__ SEC_EXCHANGE_PKT ; 
 scalar_t__ SEC_PADDING_SIZE ; 
 int /*<<< orphan*/  g_sec_crypted_random ; 
 scalar_t__ g_server_public_key_len ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(void)
{
	uint32 length = g_server_public_key_len + SEC_PADDING_SIZE;
	uint32 flags = SEC_EXCHANGE_PKT;
	STREAM s;

	s = FUNC4(flags, length + 4);

	FUNC0(s, length);
	FUNC1(s, g_sec_crypted_random, g_server_public_key_len);
	FUNC2(s, SEC_PADDING_SIZE);

	FUNC3(s);
	FUNC5(s, flags);
}