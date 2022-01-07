
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ invalid_log_entries; int * conf; int * log_store; } ;
typedef TYPE_1__ CTLOG_STORE_LOAD_CTX ;
typedef int CTLOG_STORE ;


 int CONF_parse_list (char*,char,int,int ,TYPE_1__*) ;
 int CT_F_CTLOG_STORE_LOAD_FILE ;
 int CT_R_LOG_CONF_INVALID ;
 int CTerr (int ,int ) ;
 int NCONF_free (int *) ;
 char* NCONF_get_string (int *,int *,char*) ;
 scalar_t__ NCONF_load (int *,char const*,int *) ;
 int * NCONF_new (int *) ;
 int ctlog_store_load_ctx_free (TYPE_1__*) ;
 TYPE_1__* ctlog_store_load_ctx_new () ;
 int ctlog_store_load_log ;

int CTLOG_STORE_load_file(CTLOG_STORE *store, const char *file)
{
    int ret = 0;
    char *enabled_logs;
    CTLOG_STORE_LOAD_CTX* load_ctx = ctlog_store_load_ctx_new();

    if (load_ctx == ((void*)0))
        return 0;
    load_ctx->log_store = store;
    load_ctx->conf = NCONF_new(((void*)0));
    if (load_ctx->conf == ((void*)0))
        goto end;

    if (NCONF_load(load_ctx->conf, file, ((void*)0)) <= 0) {
        CTerr(CT_F_CTLOG_STORE_LOAD_FILE, CT_R_LOG_CONF_INVALID);
        goto end;
    }

    enabled_logs = NCONF_get_string(load_ctx->conf, ((void*)0), "enabled_logs");
    if (enabled_logs == ((void*)0)) {
        CTerr(CT_F_CTLOG_STORE_LOAD_FILE, CT_R_LOG_CONF_INVALID);
        goto end;
    }

    if (!CONF_parse_list(enabled_logs, ',', 1, ctlog_store_load_log, load_ctx) ||
        load_ctx->invalid_log_entries > 0) {
        CTerr(CT_F_CTLOG_STORE_LOAD_FILE, CT_R_LOG_CONF_INVALID);
        goto end;
    }

    ret = 1;
end:
    NCONF_free(load_ctx->conf);
    ctlog_store_load_ctx_free(load_ctx);
    return ret;
}
