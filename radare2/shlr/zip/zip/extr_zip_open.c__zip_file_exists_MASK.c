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
struct stat {int dummy; } ;

/* Variables and functions */
 unsigned int ZIP_CREATE ; 
 int /*<<< orphan*/  ZIP_ER_EXISTS ; 
 int /*<<< orphan*/  ZIP_ER_INVAL ; 
 int /*<<< orphan*/  ZIP_ER_OPEN ; 
 unsigned int ZIP_EXCL ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC2(const char *fn, unsigned int flags, int *zep)
{
    struct stat st;

    if (fn == NULL) {
	FUNC0(zep, NULL, ZIP_ER_INVAL);
	return -1;
    }
    
    if (FUNC1(fn, &st) != 0) {
	if (flags & ZIP_CREATE)
	    return 0;
	else {
	    FUNC0(zep, NULL, ZIP_ER_OPEN);
	    return -1;
	}
    }
    else if ((flags & ZIP_EXCL)) {
	FUNC0(zep, NULL, ZIP_ER_EXISTS);
	return -1;
    }
    /* ZIP_CREATE gets ignored if file exists and not ZIP_EXCL,
       just like open() */

    return 1;
}