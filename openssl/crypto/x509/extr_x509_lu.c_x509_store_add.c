
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int objs; } ;
typedef TYPE_2__ X509_STORE ;
struct TYPE_12__ {int * x509; int * crl; } ;
struct TYPE_14__ {int type; TYPE_1__ data; } ;
typedef TYPE_3__ X509_OBJECT ;
typedef int X509_CRL ;
typedef int X509 ;


 int X509_LU_CRL ;
 int X509_LU_NONE ;
 int X509_LU_X509 ;
 int X509_OBJECT_free (TYPE_3__*) ;
 TYPE_3__* X509_OBJECT_new () ;
 scalar_t__ X509_OBJECT_retrieve_match (int ,TYPE_3__*) ;
 int X509_OBJECT_up_ref_count (TYPE_3__*) ;
 int X509_STORE_lock (TYPE_2__*) ;
 int X509_STORE_unlock (TYPE_2__*) ;
 int sk_X509_OBJECT_push (int ,TYPE_3__*) ;

__attribute__((used)) static int x509_store_add(X509_STORE *store, void *x, int crl) {
    X509_OBJECT *obj;
    int ret = 0, added = 0;

    if (x == ((void*)0))
        return 0;
    obj = X509_OBJECT_new();
    if (obj == ((void*)0))
        return 0;

    if (crl) {
        obj->type = X509_LU_CRL;
        obj->data.crl = (X509_CRL *)x;
    } else {
        obj->type = X509_LU_X509;
        obj->data.x509 = (X509 *)x;
    }
    if (!X509_OBJECT_up_ref_count(obj)) {
        obj->type = X509_LU_NONE;
        X509_OBJECT_free(obj);
        return 0;
    }

    X509_STORE_lock(store);
    if (X509_OBJECT_retrieve_match(store->objs, obj)) {
        ret = 1;
    } else {
        added = sk_X509_OBJECT_push(store->objs, obj);
        ret = added != 0;
    }
    X509_STORE_unlock(store);

    if (added == 0)
        X509_OBJECT_free(obj);

    return ret;
}
