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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ pad_54 ; 
 scalar_t__ pad_92 ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char*) ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*,char*) ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*,char*,int) ; 

void
FUNC12(uint8 * signature, int siglen, uint8 * session_key, int keylen, uint8 * data, int datalen)
{
	uint8 shasig[20];
	uint8 md5sig[16];
	uint8 lenhdr[4];
	void * sha;
	void * md5;

	FUNC0(lenhdr, datalen);

	sha = FUNC9();
	FUNC7(sha);
    FUNC11(sha, (char *)session_key, keylen);
	FUNC11(sha, (char *)pad_54, 40);
	FUNC11(sha, (char *)lenhdr, 4);
	FUNC11(sha, (char *)data, datalen);
	FUNC8(sha, (char *)shasig);
	FUNC10(sha);

	md5 = FUNC4();
	FUNC2(md5);
    FUNC6(md5, (char *)session_key, keylen);
	FUNC6(md5, (char *)pad_92, 48);
	FUNC6(md5, (char *)shasig, 20);
	FUNC3(md5, (char *)md5sig);
	FUNC5(md5);	

	FUNC1(signature, md5sig, siglen);
}