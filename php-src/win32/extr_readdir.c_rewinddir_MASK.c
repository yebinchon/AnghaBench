#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int zend_bool ;
typedef  int wchar_t ;
struct TYPE_3__ {int finished; int* dirw; int /*<<< orphan*/  handle; int /*<<< orphan*/  fileinfo; scalar_t__ offset; } ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FIND_FIRST_EX_LARGE_FETCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FindExInfoBasic ; 
 int /*<<< orphan*/  FindExSearchNameMatch ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int* PHP_WIN32_IOUTIL_LONG_PATH_PREFIXW ; 
 size_t PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW ; 
 size_t _MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 size_t FUNC8 (int*) ; 

int FUNC9(DIR *dp)
{/*{{{*/
	/* Re-set to the beginning */
	wchar_t *filespecw;
	HANDLE handle;
	size_t dirw_len, filespecw_len, index;
	zend_bool might_need_prefix;

	FUNC0(dp->handle);

	dp->offset = 0;
	dp->finished = 0;

	/* XXX save the dir len into the struct. */
	dirw_len = FUNC8((wchar_t *)dp->dirw);

	might_need_prefix = dirw_len >= 3 && FUNC2(dp->dirw[0]) && L':' == dp->dirw[1] && FUNC3(dp->dirw[2]);

	filespecw_len = dirw_len + 2;
	if (filespecw_len >= _MAX_PATH && might_need_prefix) {
		filespecw_len += PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW;
	}

	filespecw = (wchar_t *)FUNC5((filespecw_len + 1)*sizeof(wchar_t));
	if (filespecw == NULL) {
		return -1;
	}

	if (filespecw_len >= _MAX_PATH && might_need_prefix) {
		FUNC7(filespecw, PHP_WIN32_IOUTIL_LONG_PATH_PREFIXW);
		FUNC7(filespecw + PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW, dp->dirw);
		index = dirw_len + PHP_WIN32_IOUTIL_LONG_PATH_PREFIX_LENW - 1;
	} else {
		FUNC7(filespecw, dp->dirw);
		index = dirw_len - 1;
	}

	if (index >= 0 && (filespecw[index] == L'/' ||
	   (filespecw[index] == L'\\' && index == 0)))
		filespecw[index] = L'\0';
	FUNC6(filespecw, L"\\*");

	if ((handle = FUNC1(filespecw, FindExInfoBasic, &(dp->fileinfo), FindExSearchNameMatch, NULL, FIND_FIRST_EX_LARGE_FETCH)) == INVALID_HANDLE_VALUE) {
		dp->finished = 1;
	}

	FUNC4(filespecw);
	dp->handle = handle;

	return 0;
}