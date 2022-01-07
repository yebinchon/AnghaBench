
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char version; size_t log_id_len; size_t ext_len; size_t sct_len; int * sct; int * ext; int timestamp; int * log_id; } ;
typedef TYPE_1__ SCT ;


 int CT_F_O2I_SCT ;
 int CT_R_SCT_INVALID ;
 size_t CT_V1_HASHLEN ;
 int CTerr (int ,int ) ;
 size_t MAX_SCT_SIZE ;
 void* OPENSSL_memdup (unsigned char const*,size_t) ;
 unsigned char SCT_VERSION_V1 ;
 int SCT_free (TYPE_1__*) ;
 TYPE_1__* SCT_new () ;
 int n2l8 (unsigned char const*,int ) ;
 int n2s (unsigned char const*,size_t) ;
 int o2i_SCT_signature (TYPE_1__*,unsigned char const**,size_t) ;

SCT *o2i_SCT(SCT **psct, const unsigned char **in, size_t len)
{
    SCT *sct = ((void*)0);
    const unsigned char *p;

    if (len == 0 || len > MAX_SCT_SIZE) {
        CTerr(CT_F_O2I_SCT, CT_R_SCT_INVALID);
        goto err;
    }

    if ((sct = SCT_new()) == ((void*)0))
        goto err;

    p = *in;

    sct->version = *p;
    if (sct->version == SCT_VERSION_V1) {
        int sig_len;
        size_t len2;
        if (len < 43) {
            CTerr(CT_F_O2I_SCT, CT_R_SCT_INVALID);
            goto err;
        }
        len -= 43;
        p++;
        sct->log_id = OPENSSL_memdup(p, CT_V1_HASHLEN);
        if (sct->log_id == ((void*)0))
            goto err;
        sct->log_id_len = CT_V1_HASHLEN;
        p += CT_V1_HASHLEN;

        n2l8(p, sct->timestamp);

        n2s(p, len2);
        if (len < len2) {
            CTerr(CT_F_O2I_SCT, CT_R_SCT_INVALID);
            goto err;
        }
        if (len2 > 0) {
            sct->ext = OPENSSL_memdup(p, len2);
            if (sct->ext == ((void*)0))
                goto err;
        }
        sct->ext_len = len2;
        p += len2;
        len -= len2;

        sig_len = o2i_SCT_signature(sct, &p, len);
        if (sig_len <= 0) {
            CTerr(CT_F_O2I_SCT, CT_R_SCT_INVALID);
            goto err;
        }
        len -= sig_len;
        *in = p + len;
    } else {

        sct->sct = OPENSSL_memdup(p, len);
        if (sct->sct == ((void*)0))
            goto err;
        sct->sct_len = len;
        *in = p + len;
    }

    if (psct != ((void*)0)) {
        SCT_free(*psct);
        *psct = sct;
    }

    return sct;
err:
    SCT_free(sct);
    return ((void*)0);
}
