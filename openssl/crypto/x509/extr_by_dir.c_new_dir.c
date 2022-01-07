
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* method_data; } ;
typedef TYPE_1__ X509_LOOKUP ;
struct TYPE_7__ {int * buffer; int * lock; int * dirs; } ;
typedef TYPE_2__ BY_DIR ;


 int BUF_MEM_free (int *) ;
 int * BUF_MEM_new () ;
 int * CRYPTO_THREAD_lock_new () ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_malloc (int) ;
 int X509_F_NEW_DIR ;
 int X509err (int ,int ) ;

__attribute__((used)) static int new_dir(X509_LOOKUP *lu)
{
    BY_DIR *a = OPENSSL_malloc(sizeof(*a));

    if (a == ((void*)0)) {
        X509err(X509_F_NEW_DIR, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if ((a->buffer = BUF_MEM_new()) == ((void*)0)) {
        X509err(X509_F_NEW_DIR, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    a->dirs = ((void*)0);
    a->lock = CRYPTO_THREAD_lock_new();
    if (a->lock == ((void*)0)) {
        BUF_MEM_free(a->buffer);
        X509err(X509_F_NEW_DIR, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    lu->method_data = a;
    return 1;

 err:
    OPENSSL_free(a);
    return 0;
}
