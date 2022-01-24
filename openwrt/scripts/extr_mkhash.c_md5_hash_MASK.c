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
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int*) ; 
 char const* FUNC4 (unsigned char*,int) ; 

__attribute__((used)) static const char *FUNC5(FILE *f)
{
	MD5_CTX ctx;
	unsigned char val[MD5_DIGEST_LENGTH];
	void *buf;
	int len;

	FUNC0(&ctx);
	while ((buf = FUNC3(f, &len)) != NULL)
		FUNC2(buf, len, &ctx);
	FUNC1(val, &ctx);

	return FUNC4(val, MD5_DIGEST_LENGTH);
}