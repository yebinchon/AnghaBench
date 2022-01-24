#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  peekbuf ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_9__ {int /*<<< orphan*/ * file; } ;
struct TYPE_8__ {scalar_t__ last_errno; int end_reached; int /*<<< orphan*/ * last_entry; int /*<<< orphan*/  ctx; int /*<<< orphan*/ * uri; } ;
struct TYPE_10__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_3__ _; } ;
typedef  TYPE_4__ OSSL_STORE_LOADER_CTX ;
typedef  int /*<<< orphan*/  OSSL_STORE_LOADER ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_SYS_LIB ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC10 (char const*) ; 
 TYPE_4__* FUNC11 (int) ; 
 int /*<<< orphan*/  OSSL_STORE_F_FILE_OPEN ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*) ; 
 int /*<<< orphan*/  OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE ; 
 int /*<<< orphan*/  OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  is_dir ; 
 int /*<<< orphan*/  is_pem ; 
 scalar_t__ FUNC15 (scalar_t__,char*,int) ; 
 char FUNC16 (char const) ; 
 scalar_t__ FUNC17 (char*,struct stat*) ; 
 scalar_t__ FUNC18 (char const*,char*,int) ; 
 scalar_t__ FUNC19 (char const*,char*,int) ; 
 int /*<<< orphan*/ * FUNC20 (char*,char*) ; 

__attribute__((used)) static OSSL_STORE_LOADER_CTX *FUNC21(const OSSL_STORE_LOADER *loader,
                                        const char *uri,
                                        const UI_METHOD *ui_method,
                                        void *ui_data)
{
    OSSL_STORE_LOADER_CTX *ctx = NULL;
    struct stat st;
    struct {
        const char *path;
        unsigned int check_absolute:1;
    } path_data[2];
    size_t path_data_n = 0, i;
    const char *path;

    /*
     * First step, just take the URI as is.
     */
    path_data[path_data_n].check_absolute = 0;
    path_data[path_data_n++].path = uri;

    /*
     * Second step, if the URI appears to start with the 'file' scheme,
     * extract the path and make that the second path to check.
     * There's a special case if the URI also contains an authority, then
     * the full URI shouldn't be used as a path anywhere.
     */
    if (FUNC18(uri, "file:", 5) == 0) {
        const char *p = &uri[5];

        if (FUNC19(&uri[5], "//", 2) == 0) {
            path_data_n--;           /* Invalidate using the full URI */
            if (FUNC18(&uri[7], "localhost/", 10) == 0) {
                p = &uri[16];
            } else if (uri[7] == '/') {
                p = &uri[7];
            } else {
                FUNC13(OSSL_STORE_F_FILE_OPEN,
                              OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED);
                return NULL;
            }
        }

        path_data[path_data_n].check_absolute = 1;
#ifdef _WIN32
        /* Windows file: URIs with a drive letter start with a / */
        if (p[0] == '/' && p[2] == ':' && p[3] == '/') {
            char c = ossl_tolower(p[1]);

            if (c >= 'a' && c <= 'z') {
                p++;
                /* We know it's absolute, so no need to check */
                path_data[path_data_n].check_absolute = 0;
            }
        }
#endif
        path_data[path_data_n++].path = p;
    }


    for (i = 0, path = NULL; path == NULL && i < path_data_n; i++) {
        /*
         * If the scheme "file" was an explicit part of the URI, the path must
         * be absolute.  So says RFC 8089
         */
        if (path_data[i].check_absolute && path_data[i].path[0] != '/') {
            FUNC13(OSSL_STORE_F_FILE_OPEN,
                          OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE);
            FUNC6(1, path_data[i].path);
            return NULL;
        }

        if (FUNC17(path_data[i].path, &st) < 0) {
            FUNC8(ERR_LIB_SYS, errno,
                           "calling stat(%s)",
                           path_data[i].path);
        } else {
            path = path_data[i].path;
        }
    }
    if (path == NULL) {
        return NULL;
    }

    /* Successfully found a working path, clear possible collected errors */
    FUNC7();

    ctx = FUNC11(sizeof(*ctx));
    if (ctx == NULL) {
        FUNC13(OSSL_STORE_F_FILE_OPEN, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    if (FUNC14(st.st_mode)) {
        /*
         * Try to copy everything, even if we know that some of them must be
         * NULL for the moment.  This prevents errors in the future, when more
         * components may be used.
         */
        ctx->_.dir.uri = FUNC10(uri);
        ctx->type = is_dir;

        if (ctx->_.dir.uri == NULL)
            goto err;

        ctx->_.dir.last_entry = FUNC9(&ctx->_.dir.ctx, path);
        ctx->_.dir.last_errno = errno;
        if (ctx->_.dir.last_entry == NULL) {
            if (ctx->_.dir.last_errno != 0) {
                char errbuf[256];
                FUNC13(OSSL_STORE_F_FILE_OPEN, ERR_R_SYS_LIB);
                errno = ctx->_.dir.last_errno;
                if (FUNC15(errno, errbuf, sizeof(errbuf)))
                    FUNC6(1, errbuf);
                goto err;
            }
            ctx->_.dir.end_reached = 1;
        }
    } else {
        BIO *buff = NULL;
        char peekbuf[4096] = { 0, };

        if ((buff = FUNC3(FUNC1())) == NULL
            || (ctx->_.file.file = FUNC4(path, "rb")) == NULL) {
            FUNC2(buff);
            goto err;
        }

        ctx->_.file.file = FUNC5(buff, ctx->_.file.file);
        if (FUNC0(ctx->_.file.file, peekbuf, sizeof(peekbuf) - 1) > 0) {
            peekbuf[sizeof(peekbuf) - 1] = '\0';
            if (FUNC20(peekbuf, "-----BEGIN ") != NULL)
                ctx->type = is_pem;
        }
    }

    return ctx;
 err:
    FUNC12(ctx);
    return NULL;
}