
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ log_verbosity; int (* log_cb ) (char*,char*,int,scalar_t__,char const*) ;} ;
typedef scalar_t__ OSSL_CMP_severity ;
typedef TYPE_1__ OSSL_CMP_CTX ;


 int OPENSSL_free (char*) ;
 int OSSL_TRACE_CTRL_WRITE ;
 char* ossl_cmp_log_parse_metadata (char const*,scalar_t__*,char**,char**,int*) ;
 int stub1 (char*,char*,int,scalar_t__,char const*) ;

__attribute__((used)) static size_t ossl_cmp_log_trace_cb(const char *buf, size_t cnt,
                                    int category, int cmd, void *vdata)
{
    OSSL_CMP_CTX *ctx = vdata;
    const char *prefix_msg;
    OSSL_CMP_severity level = -1;
    char *func = ((void*)0);
    char *file = ((void*)0);
    int line = 0;

    if (buf == ((void*)0) || cnt == 0 || cmd != OSSL_TRACE_CTRL_WRITE || ctx == ((void*)0))
        return 0;
    if (ctx->log_cb == ((void*)0))
        return 1;

    prefix_msg = ossl_cmp_log_parse_metadata(buf, &level, &func, &file, &line);

    if (level > ctx->log_verbosity)
        goto end;

    if (!ctx->log_cb(func != ((void*)0) ? func : "(no func)",
                     file != ((void*)0) ? file : "(no file)",
                     line, level, prefix_msg))
        cnt = 0;

 end:
    OPENSSL_free(func);
    OPENSSL_free(file);
    return cnt;
}
