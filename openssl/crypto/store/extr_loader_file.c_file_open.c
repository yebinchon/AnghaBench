
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stat {int st_mode; } ;
typedef int peekbuf ;
typedef int errbuf ;
typedef int UI_METHOD ;
struct TYPE_9__ {int * file; } ;
struct TYPE_8__ {scalar_t__ last_errno; int end_reached; int * last_entry; int ctx; int * uri; } ;
struct TYPE_10__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_11__ {int type; TYPE_3__ _; } ;
typedef TYPE_4__ OSSL_STORE_LOADER_CTX ;
typedef int OSSL_STORE_LOADER ;
typedef int BIO ;


 scalar_t__ BIO_buffer_peek (int *,char*,int) ;
 int BIO_f_buffer () ;
 int BIO_free_all (int *) ;
 int * BIO_new (int ) ;
 int * BIO_new_file (char const*,char*) ;
 int * BIO_push (int *,int *) ;
 int ERR_LIB_SYS ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_R_SYS_LIB ;
 int ERR_add_error_data (int,char*) ;
 int ERR_clear_error () ;
 int ERR_raise_data (int ,scalar_t__,char*,char*) ;
 int * OPENSSL_DIR_read (int *,char const*) ;
 int * OPENSSL_strdup (char const*) ;
 TYPE_4__* OPENSSL_zalloc (int) ;
 int OSSL_STORE_F_FILE_OPEN ;
 int OSSL_STORE_LOADER_CTX_free (TYPE_4__*) ;
 int OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE ;
 int OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED ;
 int OSSL_STOREerr (int ,int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ errno ;
 int is_dir ;
 int is_pem ;
 scalar_t__ openssl_strerror_r (scalar_t__,char*,int) ;
 char ossl_tolower (char const) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static OSSL_STORE_LOADER_CTX *file_open(const OSSL_STORE_LOADER *loader,
                                        const char *uri,
                                        const UI_METHOD *ui_method,
                                        void *ui_data)
{
    OSSL_STORE_LOADER_CTX *ctx = ((void*)0);
    struct stat st;
    struct {
        const char *path;
        unsigned int check_absolute:1;
    } path_data[2];
    size_t path_data_n = 0, i;
    const char *path;




    path_data[path_data_n].check_absolute = 0;
    path_data[path_data_n++].path = uri;







    if (strncasecmp(uri, "file:", 5) == 0) {
        const char *p = &uri[5];

        if (strncmp(&uri[5], "//", 2) == 0) {
            path_data_n--;
            if (strncasecmp(&uri[7], "localhost/", 10) == 0) {
                p = &uri[16];
            } else if (uri[7] == '/') {
                p = &uri[7];
            } else {
                OSSL_STOREerr(OSSL_STORE_F_FILE_OPEN,
                              OSSL_STORE_R_URI_AUTHORITY_UNSUPPORTED);
                return ((void*)0);
            }
        }

        path_data[path_data_n].check_absolute = 1;
        path_data[path_data_n++].path = p;
    }


    for (i = 0, path = ((void*)0); path == ((void*)0) && i < path_data_n; i++) {




        if (path_data[i].check_absolute && path_data[i].path[0] != '/') {
            OSSL_STOREerr(OSSL_STORE_F_FILE_OPEN,
                          OSSL_STORE_R_PATH_MUST_BE_ABSOLUTE);
            ERR_add_error_data(1, path_data[i].path);
            return ((void*)0);
        }

        if (stat(path_data[i].path, &st) < 0) {
            ERR_raise_data(ERR_LIB_SYS, errno,
                           "calling stat(%s)",
                           path_data[i].path);
        } else {
            path = path_data[i].path;
        }
    }
    if (path == ((void*)0)) {
        return ((void*)0);
    }


    ERR_clear_error();

    ctx = OPENSSL_zalloc(sizeof(*ctx));
    if (ctx == ((void*)0)) {
        OSSL_STOREerr(OSSL_STORE_F_FILE_OPEN, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    if (S_ISDIR(st.st_mode)) {





        ctx->_.dir.uri = OPENSSL_strdup(uri);
        ctx->type = is_dir;

        if (ctx->_.dir.uri == ((void*)0))
            goto err;

        ctx->_.dir.last_entry = OPENSSL_DIR_read(&ctx->_.dir.ctx, path);
        ctx->_.dir.last_errno = errno;
        if (ctx->_.dir.last_entry == ((void*)0)) {
            if (ctx->_.dir.last_errno != 0) {
                char errbuf[256];
                OSSL_STOREerr(OSSL_STORE_F_FILE_OPEN, ERR_R_SYS_LIB);
                errno = ctx->_.dir.last_errno;
                if (openssl_strerror_r(errno, errbuf, sizeof(errbuf)))
                    ERR_add_error_data(1, errbuf);
                goto err;
            }
            ctx->_.dir.end_reached = 1;
        }
    } else {
        BIO *buff = ((void*)0);
        char peekbuf[4096] = { 0, };

        if ((buff = BIO_new(BIO_f_buffer())) == ((void*)0)
            || (ctx->_.file.file = BIO_new_file(path, "rb")) == ((void*)0)) {
            BIO_free_all(buff);
            goto err;
        }

        ctx->_.file.file = BIO_push(buff, ctx->_.file.file);
        if (BIO_buffer_peek(ctx->_.file.file, peekbuf, sizeof(peekbuf) - 1) > 0) {
            peekbuf[sizeof(peekbuf) - 1] = '\0';
            if (strstr(peekbuf, "-----BEGIN ") != ((void*)0))
                ctx->type = is_pem;
        }
    }

    return ctx;
 err:
    OSSL_STORE_LOADER_CTX_free(ctx);
    return ((void*)0);
}
