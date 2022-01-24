#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ invalid_log_entries; int /*<<< orphan*/ * conf; int /*<<< orphan*/ * log_store; } ;
typedef  TYPE_1__ CTLOG_STORE_LOAD_CTX ;
typedef  int /*<<< orphan*/  CTLOG_STORE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  CT_F_CTLOG_STORE_LOAD_FILE ; 
 int /*<<< orphan*/  CT_R_LOG_CONF_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 int /*<<< orphan*/  ctlog_store_load_log ; 

int FUNC8(CTLOG_STORE *store, const char *file)
{
    int ret = 0;
    char *enabled_logs;
    CTLOG_STORE_LOAD_CTX* load_ctx = FUNC7();

    if (load_ctx == NULL)
        return 0;
    load_ctx->log_store = store;
    load_ctx->conf = FUNC5(NULL);
    if (load_ctx->conf == NULL)
        goto end;

    if (FUNC4(load_ctx->conf, file, NULL) <= 0) {
        FUNC1(CT_F_CTLOG_STORE_LOAD_FILE, CT_R_LOG_CONF_INVALID);
        goto end;
    }

    enabled_logs = FUNC3(load_ctx->conf, NULL, "enabled_logs");
    if (enabled_logs == NULL) {
        FUNC1(CT_F_CTLOG_STORE_LOAD_FILE, CT_R_LOG_CONF_INVALID);
        goto end;
    }

    if (!FUNC0(enabled_logs, ',', 1, ctlog_store_load_log, load_ctx) ||
        load_ctx->invalid_log_entries > 0) {
        FUNC1(CT_F_CTLOG_STORE_LOAD_FILE, CT_R_LOG_CONF_INVALID);
        goto end;
    }

    ret = 1;
end:
    FUNC2(load_ctx->conf);
    FUNC6(load_ctx);
    return ret;
}