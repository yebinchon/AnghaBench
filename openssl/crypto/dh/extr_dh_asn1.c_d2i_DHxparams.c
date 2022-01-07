
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* vparams; TYPE_9__* seed; int counter; int j; int g; int q; int p; } ;
typedef TYPE_1__ int_dhx942_dh ;
struct TYPE_12__ {int * data; int length; } ;
struct TYPE_11__ {int counter; int seedlen; int * seed; int j; int g; int q; int p; } ;
typedef TYPE_2__ DH ;


 int ASN1_BIT_STRING_free (TYPE_9__*) ;
 int DH_free (TYPE_2__*) ;
 TYPE_2__* DH_new () ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* d2i_int_dhx (int *,unsigned char const**,long) ;

DH *d2i_DHxparams(DH **a, const unsigned char **pp, long length)
{
    int_dhx942_dh *dhx = ((void*)0);
    DH *dh = ((void*)0);
    dh = DH_new();
    if (dh == ((void*)0))
        return ((void*)0);
    dhx = d2i_int_dhx(((void*)0), pp, length);
    if (dhx == ((void*)0)) {
        DH_free(dh);
        return ((void*)0);
    }

    if (a) {
        DH_free(*a);
        *a = dh;
    }

    dh->p = dhx->p;
    dh->q = dhx->q;
    dh->g = dhx->g;
    dh->j = dhx->j;

    if (dhx->vparams) {
        dh->seed = dhx->vparams->seed->data;
        dh->seedlen = dhx->vparams->seed->length;
        dh->counter = dhx->vparams->counter;
        dhx->vparams->seed->data = ((void*)0);
        ASN1_BIT_STRING_free(dhx->vparams->seed);
        OPENSSL_free(dhx->vparams);
        dhx->vparams = ((void*)0);
    }

    OPENSSL_free(dhx);
    return dh;
}
