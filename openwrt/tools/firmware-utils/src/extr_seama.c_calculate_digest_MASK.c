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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_SEAMA_META_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC6(FILE * fh, size_t size, uint8_t * digest)
{
	MD5_CTX ctx;
	size_t bytes_left, bytes_read, i;
	uint8_t buf[MAX_SEAMA_META_SIZE];

	bytes_left = size ? size : sizeof(buf);
	bytes_read = 0;

	FUNC1(&ctx);
	while (!FUNC3(fh) && !FUNC4(fh) && bytes_left > 0)
	{
		i = bytes_left < sizeof(buf) ? bytes_left : sizeof(buf);
		i = FUNC5(buf, sizeof(char), i, fh);
		if (i > 0)
		{
			FUNC2(&ctx, buf, i);
			bytes_read += i;
		}
		if (size) bytes_left -= i;
	}
	FUNC0(digest, &ctx);
	return bytes_read;
}