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
typedef  int zip_uint64_t ;
struct zip_error {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  ZIP_ER_EOF ; 
 int /*<<< orphan*/  ZIP_ER_READ ; 
 int /*<<< orphan*/  ZIP_ER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct zip_error*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (char*,int,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(FILE *fs, zip_uint64_t len, FILE *ft, struct zip_error *error)
{
    char buf[BUFSIZE];
    size_t n, nn;

    if (len == 0)
	return 0;

    while (len > 0) {
	nn = len > sizeof(buf) ? sizeof(buf) : len;
	if ((n=FUNC2(buf, 1, nn, fs)) == 0) {
            if (FUNC1(fs)) {
                FUNC0(error, ZIP_ER_READ, errno);
                return -1;
            }
            else {
                FUNC0(error, ZIP_ER_EOF, 0);
                return -1;
            }
        }

	if (FUNC3(buf, 1, n, ft) != (size_t)n) {
	    FUNC0(error, ZIP_ER_WRITE, errno);
	    return -1;
	}
	
	len -= n;
    }

    return 0;
}