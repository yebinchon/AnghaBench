
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_23__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_17__ ;
typedef struct TYPE_30__ TYPE_10__ ;


struct stat {int dummy; } ;
struct TYPE_31__ {TYPE_5__* crl; TYPE_6__* x509; } ;
struct TYPE_35__ {TYPE_17__ data; scalar_t__ type; } ;
typedef TYPE_3__ X509_OBJECT ;
typedef int X509_NAME ;
typedef scalar_t__ X509_LOOKUP_TYPE ;
struct TYPE_36__ {TYPE_23__* store_ctx; scalar_t__ method_data; } ;
typedef TYPE_4__ X509_LOOKUP ;
struct TYPE_34__ {int * issuer; } ;
struct TYPE_37__ {TYPE_2__ crl; } ;
typedef TYPE_5__ X509_CRL ;
struct TYPE_32__ {int * subject; } ;
struct TYPE_38__ {TYPE_1__ cert_info; } ;
typedef TYPE_6__ X509 ;
struct TYPE_41__ {int lock; int dirs; } ;
struct TYPE_40__ {char* dir; scalar_t__ hashes; int dir_type; } ;
struct TYPE_39__ {unsigned long hash; int suffix; } ;
struct TYPE_33__ {int objs; } ;
struct TYPE_30__ {int data; int max; } ;
typedef TYPE_7__ BY_DIR_HASH ;
typedef TYPE_8__ BY_DIR_ENTRY ;
typedef TYPE_9__ BY_DIR ;
typedef TYPE_10__ BUF_MEM ;


 int BIO_snprintf (int ,int ,char*,char*,char,...) ;
 int BUF_MEM_free (TYPE_10__*) ;
 int BUF_MEM_grow (TYPE_10__*,int) ;
 TYPE_10__* BUF_MEM_new () ;
 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int CRYPTO_THREAD_write_lock (int ) ;
 int ERR_R_BUF_LIB ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_clear_error () ;
 int OPENSSL_free (TYPE_7__*) ;
 TYPE_7__* OPENSSL_malloc (int) ;
 int X509_F_GET_CERT_BY_SUBJECT ;
 scalar_t__ X509_LU_CRL ;
 scalar_t__ X509_LU_X509 ;
 unsigned long X509_NAME_hash (int *) ;
 int X509_R_WRONG_LOOKUP_TYPE ;
 int X509_STORE_lock (TYPE_23__*) ;
 int X509_STORE_unlock (TYPE_23__*) ;
 scalar_t__ X509_load_cert_file (TYPE_4__*,int ,int ) ;
 scalar_t__ X509_load_crl_file (TYPE_4__*,int ,int ) ;
 int X509err (int ,int ) ;
 int memcpy (TYPE_17__*,TYPE_17__*,int) ;
 int sk_BY_DIR_ENTRY_num (int ) ;
 TYPE_8__* sk_BY_DIR_ENTRY_value (int ,int) ;
 int sk_BY_DIR_HASH_find (scalar_t__,TYPE_7__*) ;
 int sk_BY_DIR_HASH_push (scalar_t__,TYPE_7__*) ;
 TYPE_7__* sk_BY_DIR_HASH_value (scalar_t__,int) ;
 int sk_X509_OBJECT_find (int ,TYPE_3__*) ;
 TYPE_3__* sk_X509_OBJECT_value (int ,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strlen (char*) ;

__attribute__((used)) static int get_cert_by_subject(X509_LOOKUP *xl, X509_LOOKUP_TYPE type,
                               X509_NAME *name, X509_OBJECT *ret)
{
    BY_DIR *ctx;
    union {
        X509 st_x509;
        X509_CRL crl;
    } data;
    int ok = 0;
    int i, j, k;
    unsigned long h;
    BUF_MEM *b = ((void*)0);
    X509_OBJECT stmp, *tmp;
    const char *postfix = "";

    if (name == ((void*)0))
        return 0;

    stmp.type = type;
    if (type == X509_LU_X509) {
        data.st_x509.cert_info.subject = name;
        stmp.data.x509 = &data.st_x509;
        postfix = "";
    } else if (type == X509_LU_CRL) {
        data.crl.crl.issuer = name;
        stmp.data.crl = &data.crl;
        postfix = "r";
    } else {
        X509err(X509_F_GET_CERT_BY_SUBJECT, X509_R_WRONG_LOOKUP_TYPE);
        goto finish;
    }

    if ((b = BUF_MEM_new()) == ((void*)0)) {
        X509err(X509_F_GET_CERT_BY_SUBJECT, ERR_R_BUF_LIB);
        goto finish;
    }

    ctx = (BY_DIR *)xl->method_data;

    h = X509_NAME_hash(name);
    for (i = 0; i < sk_BY_DIR_ENTRY_num(ctx->dirs); i++) {
        BY_DIR_ENTRY *ent;
        int idx;
        BY_DIR_HASH htmp, *hent;

        ent = sk_BY_DIR_ENTRY_value(ctx->dirs, i);
        j = strlen(ent->dir) + 1 + 8 + 6 + 1 + 1;
        if (!BUF_MEM_grow(b, j)) {
            X509err(X509_F_GET_CERT_BY_SUBJECT, ERR_R_MALLOC_FAILURE);
            goto finish;
        }
        if (type == X509_LU_CRL && ent->hashes) {
            htmp.hash = h;
            CRYPTO_THREAD_read_lock(ctx->lock);
            idx = sk_BY_DIR_HASH_find(ent->hashes, &htmp);
            if (idx >= 0) {
                hent = sk_BY_DIR_HASH_value(ent->hashes, idx);
                k = hent->suffix;
            } else {
                hent = ((void*)0);
                k = 0;
            }
            CRYPTO_THREAD_unlock(ctx->lock);
        } else {
            k = 0;
            hent = ((void*)0);
        }
        for (;;) {
            char c = '/';
            if (c == '\0') {




                BIO_snprintf(b->data, b->max,
                             "%s%08lx.%s%d", ent->dir, h, postfix, k);
            } else {
                BIO_snprintf(b->data, b->max,
                             "%s%c%08lx.%s%d", ent->dir, c, h, postfix, k);
            }




            {
                struct stat st;
                if (stat(b->data, &st) < 0)
                    break;
            }


            if (type == X509_LU_X509) {
                if ((X509_load_cert_file(xl, b->data, ent->dir_type)) == 0)
                    break;
            } else if (type == X509_LU_CRL) {
                if ((X509_load_crl_file(xl, b->data, ent->dir_type)) == 0)
                    break;
            }

            k++;
        }




        X509_STORE_lock(xl->store_ctx);
        j = sk_X509_OBJECT_find(xl->store_ctx->objs, &stmp);
        tmp = sk_X509_OBJECT_value(xl->store_ctx->objs, j);
        X509_STORE_unlock(xl->store_ctx);



        if (type == X509_LU_CRL) {
            CRYPTO_THREAD_write_lock(ctx->lock);




            if (hent == ((void*)0)) {
                htmp.hash = h;
                idx = sk_BY_DIR_HASH_find(ent->hashes, &htmp);
                hent = sk_BY_DIR_HASH_value(ent->hashes, idx);
            }
            if (hent == ((void*)0)) {
                hent = OPENSSL_malloc(sizeof(*hent));
                if (hent == ((void*)0)) {
                    CRYPTO_THREAD_unlock(ctx->lock);
                    X509err(X509_F_GET_CERT_BY_SUBJECT, ERR_R_MALLOC_FAILURE);
                    ok = 0;
                    goto finish;
                }
                hent->hash = h;
                hent->suffix = k;
                if (!sk_BY_DIR_HASH_push(ent->hashes, hent)) {
                    CRYPTO_THREAD_unlock(ctx->lock);
                    OPENSSL_free(hent);
                    X509err(X509_F_GET_CERT_BY_SUBJECT, ERR_R_MALLOC_FAILURE);
                    ok = 0;
                    goto finish;
                }
            } else if (hent->suffix < k) {
                hent->suffix = k;
            }

            CRYPTO_THREAD_unlock(ctx->lock);

        }

        if (tmp != ((void*)0)) {
            ok = 1;
            ret->type = tmp->type;
            memcpy(&ret->data, &tmp->data, sizeof(ret->data));





            ERR_clear_error();

            goto finish;
        }
    }
 finish:
    BUF_MEM_free(b);
    return ok;
}
