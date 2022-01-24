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
 int /*<<< orphan*/  g_rc4_encrypt_key ; 
 int /*<<< orphan*/  g_rc4_key_len ; 
 scalar_t__ g_sec_encrypt_key ; 
 int /*<<< orphan*/  g_sec_encrypt_update_key ; 
 int g_sec_encrypt_use_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(uint8 * data, int length)
{
	if (g_sec_encrypt_use_count == 4096)
	{
		FUNC2(g_sec_encrypt_key, g_sec_encrypt_update_key);
		FUNC1(g_rc4_encrypt_key, (char *)g_sec_encrypt_key, g_rc4_key_len);
		g_sec_encrypt_use_count = 0;
	}

	FUNC0(g_rc4_encrypt_key, (char *)data, (char *)data, length);
	g_sec_encrypt_use_count++;
}