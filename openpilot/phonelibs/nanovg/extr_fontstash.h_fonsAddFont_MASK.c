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
typedef  int /*<<< orphan*/  FONScontext ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FONS_INVALID ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,unsigned char*,int,int) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(FONScontext* stash, const char* name, const char* path)
{
	FILE* fp = 0;
	int dataSize = 0;
	unsigned char* data = NULL;

	// Read in the font data.
	fp = FUNC2(path, "rb");
	if (fp == NULL) goto error;
	FUNC5(fp,0,SEEK_END);
	dataSize = (int)FUNC6(fp);
	FUNC5(fp,0,SEEK_SET);
	data = (unsigned char*)FUNC7(dataSize);
	if (data == NULL) goto error;
	FUNC3(data, 1, dataSize, fp);
	FUNC0(fp);
	fp = 0;

	return FUNC1(stash, name, data, dataSize, 1);

error:
	if (data) FUNC4(data);
	if (fp) FUNC0(fp);
	return FONS_INVALID;
}