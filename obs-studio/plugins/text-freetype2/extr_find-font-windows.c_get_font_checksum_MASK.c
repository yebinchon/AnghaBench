#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct dstr {int len; int /*<<< orphan*/ * array; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cFileName; int /*<<< orphan*/  ftLastWriteTime; } ;
typedef  TYPE_1__ WIN32_FIND_DATAA ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  FILETIME ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_FONTS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

uint32_t FUNC11(void)
{
	uint32_t checksum = 0;
	struct dstr path = {0};
	HANDLE handle;
	WIN32_FIND_DATAA wfd;

	FUNC8(&path, MAX_PATH);

	HRESULT res = FUNC3(NULL, CSIDL_FONTS, NULL,
				       SHGFP_TYPE_CURRENT, path.array);
	if (res != S_OK) {
		FUNC4(LOG_WARNING, "Error finding windows font folder");
		return 0;
	}

	path.len = FUNC10(path.array);
	FUNC6(&path, "\\*.*");

	handle = FUNC1(path.array, &wfd);
	if (handle == INVALID_HANDLE_VALUE)
		goto free_string;

	FUNC9(&path, path.len - 4);

	do {
		checksum = FUNC5(checksum, &wfd.ftLastWriteTime,
				      sizeof(FILETIME));
		checksum = FUNC5(checksum, wfd.cFileName,
				      FUNC10(wfd.cFileName));
	} while (FUNC2(handle, &wfd));

	FUNC0(handle);

free_string:
	FUNC7(&path);
	return checksum;
}