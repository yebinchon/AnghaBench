#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  (* handler ) () ;} ;
typedef  TYPE_1__ OPENSSL_INIT_STOP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ async_inited ; 
 scalar_t__ base_inited ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/ * init_lock ; 
 scalar_t__ load_crypto_strings_inited ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 TYPE_1__* stop_handlers ; 
 int stopped ; 
 int /*<<< orphan*/  FUNC20 () ; 
 scalar_t__ zlib_inited ; 

void FUNC21(void)
{
    OPENSSL_INIT_STOP *currhandler, *lasthandler;

    /*
     * TODO(3.0): This function needs looking at with a view to moving most/all
     * of this into onfree handlers in OPENSSL_CTX.
     */

    /* If we've not been inited then no need to deinit */
    if (!base_inited)
        return;

    /* Might be explicitly called and also by atexit */
    if (stopped)
        return;
    stopped = 1;

    /*
     * Thread stop may not get automatically called by the thread library for
     * the very last thread in some situations, so call it directly.
     */
    FUNC3();

    currhandler = stop_handlers;
    while (currhandler != NULL) {
        currhandler->handler();
        lasthandler = currhandler;
        currhandler = currhandler->next;
        FUNC2(lasthandler);
    }
    stop_handlers = NULL;

    FUNC0(init_lock);
    init_lock = NULL;

    /*
     * We assume we are single-threaded for this function, i.e. no race
     * conditions for the various "*_inited" vars below.
     */

#ifndef OPENSSL_NO_COMP
    if (zlib_inited) {
        FUNC5(INIT, "OPENSSL_cleanup: comp_zlib_cleanup_int()\n");
        FUNC8();
    }
#endif

    if (async_inited) {
        FUNC5(INIT, "OPENSSL_cleanup: async_deinit()\n");
        FUNC6();
    }

    if (load_crypto_strings_inited) {
        FUNC5(INIT, "OPENSSL_cleanup: err_free_strings_int()\n");
        FUNC12();
    }

    /*
     * Note that cleanup order is important:
     * - rand_cleanup_int could call an ENGINE's RAND cleanup function so
     * must be called before engine_cleanup_int()
     * - ENGINEs use CRYPTO_EX_DATA and therefore, must be cleaned up
     * before the ex data handlers are wiped during default openssl_ctx deinit.
     * - conf_modules_free_int() can end up in ENGINE code so must be called
     * before engine_cleanup_int()
     * - ENGINEs and additional EVP algorithms might use added OIDs names so
     * obj_cleanup_int() must be called last
     */
    FUNC5(INIT, "OPENSSL_cleanup: rand_cleanup_int()\n");
    FUNC19();

    FUNC5(INIT, "OPENSSL_cleanup: conf_modules_free_int()\n");
    FUNC9();

#ifndef OPENSSL_NO_ENGINE
    FUNC5(INIT, "OPENSSL_cleanup: engine_cleanup_int()\n");
    FUNC10();
#endif
    FUNC5(INIT, "OPENSSL_cleanup: ossl_store_cleanup_int()\n");
    FUNC17();

    FUNC5(INIT, "OPENSSL_cleanup: openssl_ctx_default_deinit()\n");
    FUNC15();

    FUNC16();

    FUNC5(INIT, "OPENSSL_cleanup: bio_cleanup()\n");
    FUNC7();

    FUNC5(INIT, "OPENSSL_cleanup: evp_cleanup_int()\n");
    FUNC13();

    FUNC5(INIT, "OPENSSL_cleanup: obj_cleanup_int()\n");
    FUNC14();

    FUNC5(INIT, "OPENSSL_cleanup: err_int()\n");
    FUNC11();

    FUNC5(INIT, "OPENSSL_cleanup: CRYPTO_secure_malloc_done()\n");
    FUNC1();

#ifndef OPENSSL_NO_CMP
    FUNC5(INIT, "OPENSSL_cleanup: OSSL_CMP_log_close()\n");
    FUNC4();
#endif

    FUNC5(INIT, "OPENSSL_cleanup: ossl_trace_cleanup()\n");
    FUNC18();

    base_inited = 0;
}