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
typedef  int /*<<< orphan*/  zip_error_t ;
typedef  int zend_long ;
struct zip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zip*,int*,int*) ; 
 int /*<<< orphan*/ * FUNC3 (struct zip*) ; 

__attribute__((used)) static zend_long FUNC4(struct zip *za) /* {{{ */
{
#if LIBZIP_VERSION_MAJOR < 1
	int zep, syp;

	FUNC2(za, &zep, &syp);
#else
	int syp;
	zip_error_t *err;

	err = zip_get_error(za);
	syp = zip_error_code_system(err);
	zip_error_fini(err);
#endif
	return syp;
}