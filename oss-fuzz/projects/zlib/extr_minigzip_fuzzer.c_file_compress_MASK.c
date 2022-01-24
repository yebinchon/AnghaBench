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
typedef  int /*<<< orphan*/  outfile ;
typedef  int /*<<< orphan*/ * gzFile ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* GZ_SUFFIX ; 
 int MAX_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* prog ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9(char  *file, char  *mode)
{
    char outfile[MAX_NAME_LEN];
    FILE  *in;
    gzFile out;

    if (FUNC7(file) + FUNC7(GZ_SUFFIX) >= sizeof(outfile)) {
        FUNC2(stderr, "%s: filename too long\n", prog);
        FUNC0(1);
    }

    FUNC6(outfile, sizeof(outfile), "%s%s", file, GZ_SUFFIX);

    in = FUNC1(file, "rb");
    if (in == NULL) {
        FUNC5(file);
        FUNC0(1);
    }
    out = FUNC4(outfile, mode);
    if (out == NULL) {
        FUNC2(stderr, "%s: can't gzopen %s\n", prog, outfile);
        FUNC0(1);
    }
    FUNC3(in, out);

    FUNC8(file);
}