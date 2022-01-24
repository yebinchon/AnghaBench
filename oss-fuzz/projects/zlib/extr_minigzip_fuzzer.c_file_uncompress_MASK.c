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
typedef  int /*<<< orphan*/ * gzFile ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* GZ_SUFFIX ; 
 int MAX_NAME_LEN ; 
 size_t SUFFIX_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* prog ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void FUNC10(char  *file)
{
    char buf[MAX_NAME_LEN];
    char *infile, *outfile;
    FILE  *out;
    gzFile in;
    size_t len = FUNC8(file);

    if (len + FUNC8(GZ_SUFFIX) >= sizeof(buf)) {
        FUNC2(stderr, "%s: filename too long\n", prog);
        FUNC0(1);
    }

    FUNC6(buf, sizeof(buf), "%s", file);

    if (len > SUFFIX_LEN && FUNC7(file+len-SUFFIX_LEN, GZ_SUFFIX) == 0) {
        infile = file;
        outfile = buf;
        outfile[len-3] = '\0';
    } else {
        outfile = file;
        infile = buf;
        FUNC6(buf + len, sizeof(buf) - len, "%s", GZ_SUFFIX);
    }
    in = FUNC4(infile, "rb");
    if (in == NULL) {
        FUNC2(stderr, "%s: can't gzopen %s\n", prog, infile);
        FUNC0(1);
    }
    out = FUNC1(outfile, "wb");
    if (out == NULL) {
        FUNC5(file);
        FUNC0(1);
    }

    FUNC3(in, out);

    FUNC9(infile);
}