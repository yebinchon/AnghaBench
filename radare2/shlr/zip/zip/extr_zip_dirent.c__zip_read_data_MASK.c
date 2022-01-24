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
typedef  char zip_uint8_t ;
struct zip_error {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ZIP_ER_INCONS ; 
 int /*<<< orphan*/  ZIP_ER_MEMORY ; 
 int /*<<< orphan*/  ZIP_ER_READ ; 
 int /*<<< orphan*/  FUNC0 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

zip_uint8_t *
FUNC6(const zip_uint8_t **buf, FILE *fp, size_t len, int nulp, struct zip_error *error)
{
    zip_uint8_t *r;

    if (len == 0 && nulp == 0)
	return NULL;

    r = (zip_uint8_t *)FUNC4(nulp ? len+1 : len);
    if (!r) {
	FUNC0(error, ZIP_ER_MEMORY, 0);
	return NULL;
    }

    if (buf) {
	FUNC5(r, *buf, len);
	*buf += len;
    }
    else {
	if (FUNC2(r, 1, len, fp)<len) {
	    FUNC3(r);
            if (FUNC1(fp))
                FUNC0(error, ZIP_ER_READ, errno);
            else
                FUNC0(error, ZIP_ER_INCONS, 0);
	    return NULL;
	}
    }

    if (nulp) {
	zip_uint8_t *o;
	/* replace any in-string NUL characters with spaces */
	r[len] = 0;
	for (o=r; o<r+len; o++)
	    if (*o == '\0')
		*o = ' ';
    }

    return r;
}