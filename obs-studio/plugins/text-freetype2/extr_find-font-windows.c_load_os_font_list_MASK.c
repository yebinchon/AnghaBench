#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct dstr {int /*<<< orphan*/  array; int /*<<< orphan*/  member_0; scalar_t__ len; } ;
struct TYPE_8__ {int dwFileAttributes; char* cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAA ;
struct TYPE_9__ {scalar_t__ num_faces; } ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ FT_Long ;
typedef  TYPE_2__* FT_Face ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 int /*<<< orphan*/  CSIDL_FONTS ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC4 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  SHGFP_TYPE_CURRENT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC11 (struct dstr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct dstr*,scalar_t__) ; 
 int /*<<< orphan*/  ft2_lib ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(void)
{
	struct dstr path = {0};
	HANDLE handle;
	WIN32_FIND_DATAA wfd;

	FUNC11(&path, MAX_PATH);

	HRESULT res = FUNC5(NULL, CSIDL_FONTS, NULL,
				       SHGFP_TYPE_CURRENT, path.array);
	if (res != S_OK) {
		FUNC6(LOG_WARNING, "Error finding windows font folder");
		return;
	}

	path.len = FUNC14(path.array);
	FUNC8(&path, "\\*.*");

	handle = FUNC3(path.array, &wfd);
	if (handle == INVALID_HANDLE_VALUE)
		goto free_string;

	FUNC12(&path, path.len - 4);

	do {
		struct dstr full_path = {0};
		FT_Face face;
		FT_Long idx = 0;
		FT_Long max_faces = 1;

		if (wfd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
			continue;

		FUNC9(&full_path, &path);
		FUNC8(&full_path, "\\");
		FUNC8(&full_path, wfd.cFileName);

		while (idx < max_faces) {
			FT_Error ret = FUNC1(ft2_lib, full_path.array,
						   idx, &face);
			if (ret != 0)
				break;

			FUNC7(face, idx++, full_path.array);
			max_faces = face->num_faces;
			FUNC0(face);
		}

		FUNC10(&full_path);
	} while (FUNC4(handle, &wfd));

	FUNC2(handle);

	FUNC13();

free_string:
	FUNC10(&path);
}