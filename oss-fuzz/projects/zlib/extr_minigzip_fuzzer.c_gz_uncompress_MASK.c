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
typedef  int /*<<< orphan*/  gzFile ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int BUFLENW ; 
 scalar_t__ Z_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC6(gzFile in, FILE   *out)
{
    char buf[BUFLENW];
    int len;
    int err;

    for (;;) {
        len = FUNC5(in, buf, sizeof(buf));
        if (len < 0) FUNC0 (FUNC4(in, &err));
        if (len == 0) break;

        if ((int)FUNC2(buf, 1, (unsigned)len, out) != len) {
            FUNC0("failed fwrite");
        }
    }
    if (FUNC1(out)) FUNC0("failed fclose");

    if (FUNC3(in) != Z_OK) FUNC0("failed gzclose");
}