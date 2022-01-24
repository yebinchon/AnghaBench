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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  CONF_F_GET_NEXT_FILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 char* FUNC3 (int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 char* FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static BIO *FUNC10(const char *path, OPENSSL_DIR_CTX **dirctx)
{
    const char *filename;
    size_t pathlen;

    pathlen = FUNC9(path);
    while ((filename = FUNC3(dirctx, path)) != NULL) {
        size_t namelen;

        namelen = FUNC9(filename);


        if ((namelen > 5 && FUNC8(filename + namelen - 5, ".conf") == 0)
            || (namelen > 4 && FUNC8(filename + namelen - 4, ".cnf") == 0)) {
            size_t newlen;
            char *newpath;
            BIO *bio;

            newlen = pathlen + namelen + 2;
            newpath = FUNC7(newlen);
            if (newpath == NULL) {
                FUNC1(CONF_F_GET_NEXT_FILE, ERR_R_MALLOC_FAILURE);
                break;
            }
#ifdef OPENSSL_SYS_VMS
            /*
             * If the given path isn't clear VMS syntax,
             * we treat it as on Unix.
             */
            if (path[pathlen - 1] == ']'
                || path[pathlen - 1] == '>'
                || path[pathlen - 1] == ':') {
                /* Clear VMS directory syntax, just copy as is */
                OPENSSL_strlcpy(newpath, path, newlen);
            }
#endif
            if (newpath[0] == '\0') {
                FUNC6(newpath, path, newlen);
                FUNC5(newpath, "/", newlen);
            }
            FUNC5(newpath, filename, newlen);

            bio = FUNC0(newpath, "r");
            FUNC4(newpath);
            /* Errors when opening files are non-fatal. */
            if (bio != NULL)
                return bio;
        }
    }
    FUNC2(dirctx);
    *dirctx = NULL;
    return NULL;
}