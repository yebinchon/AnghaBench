#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  scheme_copy ;
typedef  int /*<<< orphan*/  UI_METHOD ;
struct TYPE_8__ {void* post_process_data; int /*<<< orphan*/  post_process; void* ui_data; int /*<<< orphan*/  const* ui_method; int /*<<< orphan*/ * loader_ctx; TYPE_1__ const* loader; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* close ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* open ) (TYPE_1__ const*,char const*,int /*<<< orphan*/  const*,void*) ;} ;
typedef  int /*<<< orphan*/  OSSL_STORE_post_process_info_fn ;
typedef  int /*<<< orphan*/  OSSL_STORE_LOADER_CTX ;
typedef  TYPE_1__ OSSL_STORE_LOADER ;
typedef  TYPE_2__ OSSL_STORE_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  OSSL_STORE_F_OSSL_STORE_OPEN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,void*) ; 
 int /*<<< orphan*/  STORE ; 
 TYPE_1__* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__ const*,char const*,int /*<<< orphan*/  const*,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

OSSL_STORE_CTX *FUNC14(const char *uri, const UI_METHOD *ui_method,
                                void *ui_data,
                                OSSL_STORE_post_process_info_fn post_process,
                                void *post_process_data)
{
    const OSSL_STORE_LOADER *loader = NULL;
    OSSL_STORE_LOADER_CTX *loader_ctx = NULL;
    OSSL_STORE_CTX *ctx = NULL;
    char scheme_copy[256], *p, *schemes[2];
    size_t schemes_n = 0;
    size_t i;

    /*
     * Put the file scheme first.  If the uri does represent an existing file,
     * possible device name and all, then it should be loaded.  Only a failed
     * attempt at loading a local file should have us try something else.
     */
    schemes[schemes_n++] = "file";

    /*
     * Now, check if we have something that looks like a scheme, and add it
     * as a second scheme.  However, also check if there's an authority start
     * (://), because that will invalidate the previous file scheme.  Also,
     * check that this isn't actually the file scheme, as there's no point
     * going through that one twice!
     */
    FUNC3(scheme_copy, uri, sizeof(scheme_copy));
    if ((p = FUNC10(scheme_copy, ':')) != NULL) {
        *p++ = '\0';
        if (FUNC9(scheme_copy, "file") != 0) {
            if (FUNC11(p, "//", 2) == 0)
                schemes_n--;         /* Invalidate the file scheme */
            schemes[schemes_n++] = scheme_copy;
        }
    }

    FUNC2();

    /* Try each scheme until we find one that could open the URI */
    for (i = 0; loader_ctx == NULL && i < schemes_n; i++) {
        FUNC6(STORE, "Looking up scheme %s\n", schemes[i]);
        if ((loader = FUNC8(schemes[i])) != NULL) {
            FUNC6(STORE, "Found loader for scheme %s\n", schemes[i]);
            loader_ctx = loader->open(loader, uri, ui_method, ui_data);
            FUNC7(STORE, "Opened %s => %p\n", uri, (void *)loader_ctx);
        }
    }

    if (loader_ctx == NULL)
        goto err;

    if ((ctx = FUNC4(sizeof(*ctx))) == NULL) {
        FUNC5(OSSL_STORE_F_OSSL_STORE_OPEN, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ctx->loader = loader;
    ctx->loader_ctx = loader_ctx;
    ctx->ui_method = ui_method;
    ctx->ui_data = ui_data;
    ctx->post_process = post_process;
    ctx->post_process_data = post_process_data;

    /*
     * If the attempt to open with the 'file' scheme loader failed and the
     * other scheme loader succeeded, the failure to open with the 'file'
     * scheme loader leaves an error on the error stack.  Let's remove it.
     */
    FUNC1();

    return ctx;

 err:
    FUNC0();
    if (loader_ctx != NULL) {
        /*
         * We ignore a returned error because we will return NULL anyway in
         * this case, so if something goes wrong when closing, that'll simply
         * just add another entry on the error stack.
         */
        (void)loader->close(loader_ctx);
    }
    return NULL;
}