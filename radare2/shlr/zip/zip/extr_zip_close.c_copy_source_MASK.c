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
typedef  scalar_t__ zip_int64_t ;
struct zip_source {int dummy; } ;
struct zip {int /*<<< orphan*/  error; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  ZIP_ER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct zip_source*) ; 
 int /*<<< orphan*/  errno ; 
 size_t FUNC2 (char*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zip_source*) ; 
 scalar_t__ FUNC4 (struct zip_source*) ; 
 scalar_t__ FUNC5 (struct zip_source*,char*,int) ; 

__attribute__((used)) static int
FUNC6(struct zip *za, struct zip_source *src, FILE *ft)
{
    char buf[BUFSIZE];
    zip_int64_t n;
    int ret;

    if (FUNC4(src) < 0) {
	FUNC1(&za->error, src);
	return -1;
    }

    ret = 0;
    while ((n=FUNC5(src, buf, sizeof(buf))) > 0) {
	if (FUNC2(buf, 1, (size_t)n, ft) != (size_t)n) {
	    FUNC0(&za->error, ZIP_ER_WRITE, errno);
	    ret = -1;
	    break;
	}
    }

    if (n < 0) {
	if (ret == 0)
	    FUNC1(&za->error, src);
	ret = -1;
    }	

    FUNC3(src);

    return ret;
}