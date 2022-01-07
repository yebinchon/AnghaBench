
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msg ;
typedef int component ;
typedef scalar_t__ (* OSSL_cmp_log_cb_t ) (char*,char const*,int,int ,char*) ;


 int BIO_snprintf (char*,int,char*,char const*,...) ;
 int ERR_TXT_STRING ;
 unsigned long ERR_get_error_all (char const**,int*,char const**,char const**,int*) ;
 int ERR_lib_error_string (unsigned long) ;
 int ERR_print_errors_cb_LIMIT ;
 int ERR_print_errors_fp (int ) ;
 int ERR_reason_error_string (unsigned long) ;
 int OSSL_CMP_LOG_ERR ;
 int stderr ;

void OSSL_CMP_print_errors_cb(OSSL_cmp_log_cb_t log_fn)
{
    unsigned long err;
    char msg[ERR_print_errors_cb_LIMIT];
    const char *file = ((void*)0), *func = ((void*)0), *data = ((void*)0);
    int line, flags;

    if (log_fn == ((void*)0)) {

        ERR_print_errors_fp(stderr);



        return;
    }

    while ((err = ERR_get_error_all(&file, &line, &func, &data, &flags)) != 0) {
        char component[128];
        const char *func_ = func != ((void*)0) && *func != '\0' ? func : "<unknown>";

        if (!(flags & ERR_TXT_STRING))
            data = ((void*)0);




        BIO_snprintf(component, sizeof(component), "%s",func_);

        BIO_snprintf(msg, sizeof(msg), "%s%s%s", ERR_reason_error_string(err),
                     data == ((void*)0) ? "" : " : ", data == ((void*)0) ? "" : data);
        if (log_fn(component, file, line, OSSL_CMP_LOG_ERR, msg) <= 0)
            break;
    }
}
