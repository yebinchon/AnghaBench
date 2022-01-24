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
typedef  int /*<<< orphan*/  OPENSSL_DIR_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int*,char***) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 char* FUNC3 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  PATH_MAX ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10(int argc, char **argv) {
    int n;

    FUNC1(&argc, &argv);

    for (n = 1; n < argc; ++n) {
        size_t dirname_len = FUNC8(argv[n]);
        const char *filename = NULL;
        char *pathname = NULL;
        OPENSSL_DIR_CTX *ctx = NULL;
        int wasdir = 0;

        /*
         * We start with trying to read the given path as a directory.
         */
        while ((filename = FUNC3(&ctx, argv[n])) != NULL) {
            wasdir = 1;
            if (pathname == NULL) {
                pathname = FUNC5(PATH_MAX);
                if (pathname == NULL)
                    break;
                FUNC7(pathname, argv[n]);
#ifdef __VMS
                if (strchr(":<]", pathname[dirname_len - 1]) == NULL)
#endif
                    pathname[dirname_len++] = '/';
                pathname[dirname_len] = '\0';
            }
            FUNC7(pathname + dirname_len, filename);
            FUNC9(pathname);
        }
        FUNC2(&ctx);

        /* If it wasn't a directory, treat it as a file instead */
        if (!wasdir)
            FUNC9(argv[n]);

        FUNC4(pathname);
    }

    FUNC0();

    return 0;
}