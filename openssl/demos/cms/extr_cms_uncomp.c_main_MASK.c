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
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(int argc, char **argv)
{
    BIO *in = NULL, *out = NULL;
    CMS_ContentInfo *cms = NULL;
    int ret = 1;

    FUNC6();
    FUNC4();

    /* Open compressed content */

    in = FUNC1("smcomp.txt", "r");

    if (!in)
        goto err;

    /* Sign content */
    cms = FUNC7(in, NULL);

    if (!cms)
        goto err;

    out = FUNC1("smuncomp.txt", "w");
    if (!out)
        goto err;

    /* Uncompress S/MIME message */
    if (!FUNC3(cms, out, NULL, 0))
        goto err;

    ret = 0;

 err:

    if (ret) {
        FUNC8(stderr, "Error Uncompressing Data\n");
        FUNC5(stderr);
    }

    FUNC2(cms);
    FUNC0(in);
    FUNC0(out);
    return ret;
}