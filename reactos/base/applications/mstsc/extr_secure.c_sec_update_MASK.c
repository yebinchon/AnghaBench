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
 int g_rc4_key_len ; 
 scalar_t__ pad_54 ; 
 scalar_t__ pad_92 ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,char*,int) ; 
 void* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*) ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(uint8 * key, uint8 * update_key)
{
	uint8 shasig[20];
	void * sha;
	void * md5;
	void * update;

	sha = FUNC11();
	FUNC9(sha);
	FUNC13(sha, (char *)update_key, g_rc4_key_len);
	FUNC13(sha, (char *)pad_54, 40);
	FUNC13(sha, (char *)key, g_rc4_key_len);
	FUNC10(sha, (char *)shasig);
	FUNC12(sha);

	md5 = FUNC2();
	FUNC0(md5);
    FUNC4(md5, (char *)update_key, g_rc4_key_len);
	FUNC4(md5, (char *)pad_92, 48);
	FUNC4(md5, (char *)shasig, 20);
	FUNC1(md5, (char *)key);
	FUNC3(md5);


	update = FUNC6();
	FUNC8(update, (char *)key, g_rc4_key_len);
	FUNC5(update, (char *)key, (char *)key, g_rc4_key_len);
	FUNC7(update);

	if (g_rc4_key_len == 8)
		FUNC14(key);
}