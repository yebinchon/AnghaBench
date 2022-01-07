
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int scheme_copy ;
typedef int UI_METHOD ;
struct TYPE_8__ {void* post_process_data; int post_process; void* ui_data; int const* ui_method; int * loader_ctx; TYPE_1__ const* loader; } ;
struct TYPE_7__ {int (* close ) (int *) ;int * (* open ) (TYPE_1__ const*,char const*,int const*,void*) ;} ;
typedef int OSSL_STORE_post_process_info_fn ;
typedef int OSSL_STORE_LOADER_CTX ;
typedef TYPE_1__ OSSL_STORE_LOADER ;
typedef TYPE_2__ OSSL_STORE_CTX ;


 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_last_mark () ;
 int ERR_pop_to_mark () ;
 int ERR_set_mark () ;
 int OPENSSL_strlcpy (char*,char const*,int) ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_OSSL_STORE_OPEN ;
 int OSSL_STOREerr (int ,int ) ;
 int OSSL_TRACE1 (int ,char*,char*) ;
 int OSSL_TRACE2 (int ,char*,char const*,void*) ;
 int STORE ;
 TYPE_1__* ossl_store_get0_loader_int (char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int * stub1 (TYPE_1__ const*,char const*,int const*,void*) ;
 int stub2 (int *) ;

OSSL_STORE_CTX *OSSL_STORE_open(const char *uri, const UI_METHOD *ui_method,
                                void *ui_data,
                                OSSL_STORE_post_process_info_fn post_process,
                                void *post_process_data)
{
    const OSSL_STORE_LOADER *loader = ((void*)0);
    OSSL_STORE_LOADER_CTX *loader_ctx = ((void*)0);
    OSSL_STORE_CTX *ctx = ((void*)0);
    char scheme_copy[256], *p, *schemes[2];
    size_t schemes_n = 0;
    size_t i;






    schemes[schemes_n++] = "file";
    OPENSSL_strlcpy(scheme_copy, uri, sizeof(scheme_copy));
    if ((p = strchr(scheme_copy, ':')) != ((void*)0)) {
        *p++ = '\0';
        if (strcasecmp(scheme_copy, "file") != 0) {
            if (strncmp(p, "//", 2) == 0)
                schemes_n--;
            schemes[schemes_n++] = scheme_copy;
        }
    }

    ERR_set_mark();


    for (i = 0; loader_ctx == ((void*)0) && i < schemes_n; i++) {
        OSSL_TRACE1(STORE, "Looking up scheme %s\n", schemes[i]);
        if ((loader = ossl_store_get0_loader_int(schemes[i])) != ((void*)0)) {
            OSSL_TRACE1(STORE, "Found loader for scheme %s\n", schemes[i]);
            loader_ctx = loader->open(loader, uri, ui_method, ui_data);
            OSSL_TRACE2(STORE, "Opened %s => %p\n", uri, (void *)loader_ctx);
        }
    }

    if (loader_ctx == ((void*)0))
        goto err;

    if ((ctx = OPENSSL_zalloc(sizeof(*ctx))) == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_OSSL_STORE_OPEN, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    ctx->loader = loader;
    ctx->loader_ctx = loader_ctx;
    ctx->ui_method = ui_method;
    ctx->ui_data = ui_data;
    ctx->post_process = post_process;
    ctx->post_process_data = post_process_data;






    ERR_pop_to_mark();

    return ctx;

 err:
    ERR_clear_last_mark();
    if (loader_ctx != ((void*)0)) {





        (void)loader->close(loader_ctx);
    }
    return ((void*)0);
}
