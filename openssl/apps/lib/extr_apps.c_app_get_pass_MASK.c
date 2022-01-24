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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int APP_PASS_LEN ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FORMAT_TEXT ; 
 char* FUNC8 (char const*) ; 
 int PASS_SOURCE_SIZE_MAX ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*) ; 
 char* FUNC12 (char const*,char) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 scalar_t__ FUNC14 (char const*,char*,int) ; 

__attribute__((used)) static char *FUNC15(const char *arg, int keepbio)
{
    static BIO *pwdbio = NULL;
    char *tmp, tpass[APP_PASS_LEN];
    int i;

    /* PASS_SOURCE_SIZE_MAX = max number of chars before ':' in below strings */
    if (FUNC14(arg, "pass:", 5) == 0)
        return FUNC8(arg + 5);
    if (FUNC14(arg, "env:", 4) == 0) {
        tmp = FUNC11(arg + 4);
        if (tmp == NULL) {
            FUNC6(bio_err, "No environment variable %s\n", arg + 4);
            return NULL;
        }
        return FUNC8(tmp);
    }
    if (!keepbio || pwdbio == NULL) {
        if (FUNC14(arg, "file:", 5) == 0) {
            pwdbio = FUNC5(arg + 5, "r");
            if (pwdbio == NULL) {
                FUNC6(bio_err, "Can't open file %s\n", arg + 5);
                return NULL;
            }
#if !defined(_WIN32)
            /*
             * Under _WIN32, which covers even Win64 and CE, file
             * descriptors referenced by BIO_s_fd are not inherited
             * by child process and therefore below is not an option.
             * It could have been an option if bss_fd.c was operating
             * on real Windows descriptors, such as those obtained
             * with CreateFile.
             */
        } else if (FUNC14(arg, "fd:", 3) == 0) {
            BIO *btmp;
            i = FUNC9(arg + 3);
            if (i >= 0)
                pwdbio = FUNC4(i, BIO_NOCLOSE);
            if ((i < 0) || !pwdbio) {
                FUNC6(bio_err, "Can't access file descriptor %s\n", arg + 3);
                return NULL;
            }
            /*
             * Can't do BIO_gets on an fd BIO so add a buffering BIO
             */
            btmp = FUNC3(FUNC0());
            pwdbio = FUNC7(btmp, pwdbio);
#endif
        } else if (FUNC13(arg, "stdin") == 0) {
            pwdbio = FUNC10(FORMAT_TEXT);
            if (pwdbio == NULL) {
                FUNC6(bio_err, "Can't open BIO for stdin\n");
                return NULL;
            }
        } else {
            /* argument syntax error; do not reveal too much about arg */
            tmp = FUNC12(arg, ':');
            if (tmp == NULL || tmp - arg > PASS_SOURCE_SIZE_MAX)
                FUNC6(bio_err,
                           "Invalid password argument, missing ':' within the first %d chars\n",
                           PASS_SOURCE_SIZE_MAX + 1);
            else
                FUNC6(bio_err,
                           "Invalid password argument, starting with \"%.*s\"\n",
                           (int)(tmp - arg + 1), arg);
            return NULL;
        }
    }
    i = FUNC2(pwdbio, tpass, APP_PASS_LEN);
    if (keepbio != 1) {
        FUNC1(pwdbio);
        pwdbio = NULL;
    }
    if (i <= 0) {
        FUNC6(bio_err, "Error reading password from BIO\n");
        return NULL;
    }
    tmp = FUNC12(tpass, '\n');
    if (tmp != NULL)
        *tmp = 0;
    return FUNC8(tpass);
}