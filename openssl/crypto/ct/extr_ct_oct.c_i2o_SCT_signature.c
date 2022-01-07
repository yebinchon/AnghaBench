
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ version; int sig_len; int sig; int sig_alg; int hash_alg; } ;
typedef TYPE_1__ SCT ;


 int CT_F_I2O_SCT_SIGNATURE ;
 int CT_R_SCT_INVALID_SIGNATURE ;
 int CT_R_UNSUPPORTED_VERSION ;
 int CTerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 scalar_t__ SCT_VERSION_V1 ;
 int SCT_signature_is_complete (TYPE_1__ const*) ;
 int memcpy (unsigned char*,int ,int) ;
 int s2n (int,unsigned char*) ;

int i2o_SCT_signature(const SCT *sct, unsigned char **out)
{
    size_t len;
    unsigned char *p = ((void*)0), *pstart = ((void*)0);

    if (!SCT_signature_is_complete(sct)) {
        CTerr(CT_F_I2O_SCT_SIGNATURE, CT_R_SCT_INVALID_SIGNATURE);
        goto err;
    }

    if (sct->version != SCT_VERSION_V1) {
        CTerr(CT_F_I2O_SCT_SIGNATURE, CT_R_UNSUPPORTED_VERSION);
        goto err;
    }






    len = 4 + sct->sig_len;

    if (out != ((void*)0)) {
        if (*out != ((void*)0)) {
            p = *out;
            *out += len;
        } else {
            pstart = p = OPENSSL_malloc(len);
            if (p == ((void*)0)) {
                CTerr(CT_F_I2O_SCT_SIGNATURE, ERR_R_MALLOC_FAILURE);
                goto err;
            }
            *out = p;
        }

        *p++ = sct->hash_alg;
        *p++ = sct->sig_alg;
        s2n(sct->sig_len, p);
        memcpy(p, sct->sig, sct->sig_len);
    }

    return len;
err:
    OPENSSL_free(pstart);
    return -1;
}
