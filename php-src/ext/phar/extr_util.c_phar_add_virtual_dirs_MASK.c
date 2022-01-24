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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_3__ {int /*<<< orphan*/  virtual_dirs; } ;
typedef  TYPE_1__ phar_archive_data ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int GC_PERSISTENT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (char*,char,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(phar_archive_data *phar, char *filename, size_t filename_len) /* {{{ */
{
	const char *s;
	zend_string *str;
	zval *ret;

	while ((s = FUNC2(filename, '/', filename_len))) {
		filename_len = s - filename;
		if (!filename_len) {
			break;
		}
		if (FUNC0(&phar->virtual_dirs) & GC_PERSISTENT) {
			str = FUNC4(filename, filename_len, 1);
		} else {
			str = FUNC3(filename, filename_len, 0);
		}
		ret = FUNC1(&phar->virtual_dirs, str);
		FUNC5(str);
		if (ret == NULL) {
			break;
		}
	}
}