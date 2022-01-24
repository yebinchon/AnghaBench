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
typedef  int zip_uint16_t ;
typedef  int zip_int32_t ;
struct zip_error {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CDENTRYSIZE ; 
 int LENTRYSIZE ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int ZIP_EF_LOCAL ; 
 int /*<<< orphan*/  ZIP_ER_READ ; 
 int /*<<< orphan*/  ZIP_ER_SEEK ; 
 int /*<<< orphan*/  FUNC0 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char const**) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (unsigned char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

zip_int32_t
FUNC4(FILE *f, zip_uint16_t flags, struct zip_error *error)
{
    zip_int32_t size;
    int local = (flags & ZIP_EF_LOCAL);
    int i;
    unsigned char b[6];
    const unsigned char *p;

    size = local ? LENTRYSIZE : CDENTRYSIZE;

    if (FUNC3(f, local ? 26 : 28, SEEK_CUR) < 0) {
	FUNC0(error, ZIP_ER_SEEK, errno);
	return -1;
    }

    if (FUNC2(b, (local ? 4 : 6), 1, f) != 1) {
	FUNC0(error, ZIP_ER_READ, errno);
	return -1;
    }

    p = b;
    for (i=0; i<(local ? 2 : 3); i++) {
	size += FUNC1(&p);
    }

    return size;
}