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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 long FUNC1 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (long) ; 

__attribute__((used)) static char *FUNC5(FILE *file)
{
    long fsize, ret;
    char *buf;

    FUNC2(file, 0, SEEK_END);
    fsize = FUNC3(file);
    FUNC2(file, 0, SEEK_SET);

    buf = FUNC4(fsize+1);
    ret = FUNC1(buf, 1, fsize, file);
    if (ret != fsize)
        FUNC0(1);
    buf[fsize] = '\0';

    return buf;
}