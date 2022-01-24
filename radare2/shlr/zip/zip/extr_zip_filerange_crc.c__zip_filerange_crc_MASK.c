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
typedef  long uLong ;
typedef  int /*<<< orphan*/  uInt ;
struct zip_error {int dummy; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  Bytef ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  ZIP_ER_READ ; 
 int /*<<< orphan*/  ZIP_ER_SEEK ; 
 int /*<<< orphan*/ * Z_NULL ; 
 int /*<<< orphan*/  FUNC0 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC1 (long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC4(FILE *fp, off_t start, off_t len, uLong *crcp,
		   struct zip_error *errp)
{
    Bytef buf[BUFSIZE];
    size_t n;

    *crcp = FUNC1(0L, Z_NULL, 0);

    if (FUNC3(fp, start, SEEK_SET) != 0) {
	FUNC0(errp, ZIP_ER_SEEK, errno);
	return -1;
    }
    
    while (len > 0) {
	n = len > BUFSIZE ? BUFSIZE : (size_t)len;
	if ((n=FUNC2(buf, 1, n, fp)) == 0) {
	    FUNC0(errp, ZIP_ER_READ, errno);
	    return -1;
	}

	*crcp = FUNC1(*crcp, buf, (uInt)n);

	len-= n;
    }

    return 0;
}