
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int flags; int ref_lock; int ref_offset; } ;
struct TYPE_5__ {scalar_t__ itype; char* sname; TYPE_2__* funcs; } ;
typedef int CRYPTO_RWLOCK ;
typedef int CRYPTO_REF_COUNT ;
typedef int ASN1_VALUE ;
typedef TYPE_1__ ASN1_ITEM ;
typedef TYPE_2__ ASN1_AUX ;


 int ASN1_AFLG_REFCOUNT ;
 int ASN1_F_ASN1_DO_LOCK ;
 scalar_t__ ASN1_ITYPE_NDEF_SEQUENCE ;
 scalar_t__ ASN1_ITYPE_SEQUENCE ;
 int ASN1err (int ,int ) ;
 int CRYPTO_DOWN_REF (int*,int*,int *) ;
 int CRYPTO_THREAD_lock_free (int *) ;
 int * CRYPTO_THREAD_lock_new () ;
 int CRYPTO_UP_REF (int*,int*,int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int REF_ASSERT_ISNT (int) ;
 int fprintf (int ,char*,TYPE_1__ const*,int,char*) ;
 void* offset2ptr (int *,int ) ;
 int stderr ;

int asn1_do_lock(ASN1_VALUE **pval, int op, const ASN1_ITEM *it)
{
    const ASN1_AUX *aux;
    CRYPTO_REF_COUNT *lck;
    CRYPTO_RWLOCK **lock;
    int ret = -1;

    if ((it->itype != ASN1_ITYPE_SEQUENCE)
        && (it->itype != ASN1_ITYPE_NDEF_SEQUENCE))
        return 0;
    aux = it->funcs;
    if (aux == ((void*)0) || (aux->flags & ASN1_AFLG_REFCOUNT) == 0)
        return 0;
    lck = offset2ptr(*pval, aux->ref_offset);
    lock = offset2ptr(*pval, aux->ref_lock);

    switch (op) {
    case 0:
        *lck = ret = 1;
        *lock = CRYPTO_THREAD_lock_new();
        if (*lock == ((void*)0)) {
            ASN1err(ASN1_F_ASN1_DO_LOCK, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        break;
    case 1:
        if (!CRYPTO_UP_REF(lck, &ret, *lock))
            return -1;
        break;
    case -1:
        if (!CRYPTO_DOWN_REF(lck, &ret, *lock))
            return -1;



        REF_ASSERT_ISNT(ret < 0);
        if (ret == 0) {
            CRYPTO_THREAD_lock_free(*lock);
            *lock = ((void*)0);
        }
        break;
    }

    return ret;
}
