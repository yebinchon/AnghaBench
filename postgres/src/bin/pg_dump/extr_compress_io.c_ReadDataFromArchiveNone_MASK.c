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
typedef  size_t (* ReadFunc ) (int /*<<< orphan*/ *,char**,size_t*) ;
typedef  int /*<<< orphan*/  ArchiveHandle ;

/* Variables and functions */
 size_t ZLIB_OUT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 

__attribute__((used)) static void
FUNC3(ArchiveHandle *AH, ReadFunc readF)
{
	size_t		cnt;
	char	   *buf;
	size_t		buflen;

	buf = FUNC2(ZLIB_OUT_SIZE);
	buflen = ZLIB_OUT_SIZE;

	while ((cnt = readF(AH, &buf, &buflen)))
	{
		FUNC0(buf, 1, cnt, AH);
	}

	FUNC1(buf);
}