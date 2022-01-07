
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pem_password_cb ;
typedef int BIO ;


 int PEM_FLAG_EAY_COMPATIBLE ;
 int PEM_FLAG_SECURE ;
 int pem_bytes_read_bio_flags (unsigned char**,long*,char**,char const*,int *,int *,void*,int) ;

int PEM_bytes_read_bio_secmem(unsigned char **pdata, long *plen, char **pnm,
                              const char *name, BIO *bp, pem_password_cb *cb,
                              void *u) {
    return pem_bytes_read_bio_flags(pdata, plen, pnm, name, bp, cb, u,
                                    PEM_FLAG_SECURE | PEM_FLAG_EAY_COMPATIBLE);
}
