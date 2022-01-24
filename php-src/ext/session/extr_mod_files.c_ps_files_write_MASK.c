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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_4__ {scalar_t__ fd; size_t st_size; } ;
typedef  TYPE_1__ ps_files ;

/* Variables and functions */
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int SUCCESS ; 
 unsigned int UINT_MAX ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,char*,unsigned int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 size_t FUNC8 (scalar_t__,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 size_t FUNC10 (scalar_t__,char*,size_t) ; 

__attribute__((used)) static int FUNC11(ps_files *data, zend_string *key, zend_string *val)
{
	size_t n = 0;

	/* PS(id) may be changed by calling session_regenerate_id().
	   Re-initialization should be tried here. ps_files_open() checks
       data->lastkey and reopen when it is needed. */
	FUNC7(data, FUNC1(key));
	if (data->fd < 0) {
		return FAILURE;
	}

	/* Truncate file if the amount of new data is smaller than the existing data set. */
	if (FUNC0(val) < data->st_size) {
		FUNC6(FUNC3(data->fd, 0));
	}

#if defined(HAVE_PWRITE)
	n = pwrite(data->fd, ZSTR_VAL(val), ZSTR_LEN(val), 0);
#else
	FUNC4(data->fd, 0, SEEK_SET);
#ifdef PHP_WIN32
	{
		unsigned int to_write = ZSTR_LEN(val) > UINT_MAX ? UINT_MAX : (unsigned int)ZSTR_LEN(val);
		char *buf = ZSTR_VAL(val);
		int wrote;

		do {
			wrote = _write(data->fd, buf, to_write);

			n += wrote;
			buf = wrote > -1 ? buf + wrote : 0;
			to_write = wrote > -1 ? (ZSTR_LEN(val) - n > UINT_MAX ? UINT_MAX : (unsigned int)(ZSTR_LEN(val) - n)): 0;

		} while(wrote > 0);
	}
#else
	n = FUNC10(data->fd, FUNC1(val), FUNC0(val));
#endif
#endif

	if (n != FUNC0(val)) {
		if (n == (size_t)-1) {
			FUNC5(NULL, E_WARNING, "write failed: %s (%d)", FUNC9(errno), errno);
		} else {
			FUNC5(NULL, E_WARNING, "write wrote less bytes than requested");
		}
		return FAILURE;
	}

	return SUCCESS;
}