
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* dsa; } ;
typedef TYPE_1__ PROV_DSA_CTX ;


 int DSA_free (void*) ;
 int DSA_up_ref (void*) ;

__attribute__((used)) static int dsa_signature_init(void *vpdsactx, void *vdsa)
{
    PROV_DSA_CTX *pdsactx = (PROV_DSA_CTX *)vpdsactx;

    if (pdsactx == ((void*)0) || vdsa == ((void*)0) || !DSA_up_ref(vdsa))
        return 0;
    DSA_free(pdsactx->dsa);
    pdsactx->dsa = vdsa;
    return 1;
}
