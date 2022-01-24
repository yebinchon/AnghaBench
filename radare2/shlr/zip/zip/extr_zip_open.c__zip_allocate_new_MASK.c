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
struct zip_error {int dummy; } ;
struct zip {unsigned int open_flags; int /*<<< orphan*/ * zn; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 struct zip* FUNC0 (struct zip_error*) ; 
 int /*<<< orphan*/  FUNC1 (int*,struct zip_error*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct zip*) ; 

__attribute__((used)) static struct zip *
FUNC4(const char *fn, unsigned int flags, int *zep)
{
    struct zip *za;
    struct zip_error error;

    if ((za=FUNC0(&error)) == NULL) {
	FUNC1(zep, &error, 0);
	return NULL;
    }

    if (fn == NULL)
	za->zn = NULL;
    else {
	za->zn = FUNC2(fn);
	if (!za->zn) {
	    FUNC3(za);
	    FUNC1(zep, NULL, ZIP_ER_MEMORY);
	    return NULL;
	}
    }
    za->open_flags = flags;
    return za;
}