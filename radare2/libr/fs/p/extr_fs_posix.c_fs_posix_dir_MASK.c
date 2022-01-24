#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
struct stat {scalar_t__ st_atime; int /*<<< orphan*/  st_mode; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  fullpath ;
struct TYPE_7__ {int /*<<< orphan*/  cFileName; } ;
typedef  TYPE_1__ WIN32_FIND_DATAW ;
struct TYPE_8__ {float type; scalar_t__ time; } ;
typedef  int /*<<< orphan*/  RList ;
typedef  int /*<<< orphan*/  RFSRoot ;
typedef  TYPE_2__ RFSFile ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 () ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (char const*) ; 
 struct dirent* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static RList *FUNC18(RFSRoot *root, const char *path, int view /*ignored*/) {
	RList *list;
	char fullpath[4096];
	struct stat st;
#if __WINDOWS__
	WIN32_FIND_DATAW entry;
	HANDLE fh;
	wchar_t *wcpath;
	char *wctocbuff;
	wchar_t directory[MAX_PATH];
#else
	struct dirent *de;
	DIR *dir;
#endif
	list = FUNC11 ();
	if (!list) {
		return NULL;
	}
#if __WINDOWS__
	wcpath = r_utf8_to_utf16 (path);
	if (!wcpath) {
		return NULL;
	}
	swprintf (directory, _countof (directory), L"%ls\\*.*", wcpath);
	fh = FindFirstFileW (directory, &entry);
	if (fh == INVALID_HANDLE_VALUE) {
		free (wcpath);
		return NULL;
	}
	do {
		if ((wctocbuff = r_utf16_to_utf8 (entry.cFileName))) {
			RFSFile *fsf = r_fs_file_new (NULL, wctocbuff);
			if (!fsf) {
				r_list_free (list);
				FindClose (fh);
				return NULL;
			}
			fsf->type = 'f';
			snprintf (fullpath, sizeof (fullpath)-1, "%s/%s", path, wctocbuff);
			if (!stat (fullpath, &st)) {
				fsf->type = S_ISDIR (st.st_mode)?'d':'f';
				fsf->time = st.st_atime;
			} else {
				fsf->type = 'f';
				fsf->time = 0;
			}
			r_list_append (list, fsf);
			free (wctocbuff);
		}

	} while (FindNextFileW (fh, &entry));
	FindClose (fh);
#else
	dir = FUNC7 (path);
	if (!dir) {
		FUNC10 (list);
		return NULL;
	}
	while ((de = FUNC14 (dir))) {
		RFSFile *fsf = FUNC8 (NULL, de->d_name);
		if (!fsf) {
			FUNC10 (list);
			FUNC5 (dir);
			return NULL;
		}
		fsf->type = 'f';
		FUNC15 (fullpath, sizeof (fullpath)-1, "%s/%s", path, de->d_name);
		if (!FUNC16 (fullpath, &st)) {
			fsf->type = FUNC3 (st.st_mode)?'d':'f';
			fsf->time = st.st_atime;
		} else {
			fsf->type = 'f';
			fsf->time = 0;
		}
		FUNC9 (list, fsf);
	}
	FUNC5 (dir);
#endif
	return list;
}