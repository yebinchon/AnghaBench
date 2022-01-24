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
typedef  scalar_t__ uLongf ;
typedef  int /*<<< orphan*/  gdIOCtx ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int Z_OK ; 
 int FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int FUNC5 (unsigned char*,scalar_t__*,unsigned char*,int) ; 

__attribute__((used)) static int FUNC6 (int offset, char *compBuf, int compSize, char *chunkBuf, uLongf * chunkLen, gdIOCtx * in)
{
	int zerr;

	if (FUNC3(in) != offset) {
		FUNC0(FUNC4("Positioning in file to %d", offset));
		FUNC2(in, offset);
	} else {
		FUNC0(FUNC4("Already Positioned in file to %d", offset));
	}

	/* Read and uncompress an entire chunk. */
	FUNC0(FUNC4("Reading file"));
	if (FUNC1(compBuf, compSize, in) != compSize) {
		return FALSE;
	}
	FUNC0(FUNC4("Got %d bytes. Uncompressing into buffer of %d bytes", compSize, (int)*chunkLen));
	zerr = FUNC5((unsigned char *) chunkBuf, chunkLen, (unsigned char *) compBuf, compSize);
	if (zerr != Z_OK) {
		FUNC0(FUNC4("Error %d from uncompress", zerr));
		return FALSE;
	}
	FUNC0(FUNC4("Got chunk"));

	return TRUE;
}