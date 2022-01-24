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
typedef  scalar_t__ uint8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*,char*) ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*,char*,int) ; 

void
FUNC11(uint8 * out, uint8 * in, uint8 * salt1, uint8 * salt2, uint8 salt)
{
	uint8 shasig[20];
	uint8 pad[4];
	void * sha;
	void * md5;
	int i;

	for (i = 0; i < 3; i++)
	{
		FUNC0(pad, salt + i, i + 1);
		sha = FUNC8();
		FUNC6(sha);
		FUNC10(sha, (char *)pad, i + 1);
		FUNC10(sha, (char *)in, 48);
		FUNC10(sha, (char *)salt1, 32);
		FUNC10(sha, (char *)salt2, 32);
		FUNC7(sha, (char *)shasig);
		FUNC9(sha);
		md5 = FUNC3();
		FUNC1(md5);
        FUNC5(md5, (char *)in, 48);
        FUNC5(md5, (char *)shasig, 20);
		FUNC2(md5, (char *)out + i * 16);
		FUNC4(md5);
	}
}