
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_F_CRYPTO_MEMDUP ;
 void* CRYPTO_malloc (size_t,char const*,int) ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 size_t INT_MAX ;
 void* memcpy (void*,void const*,size_t) ;

void *CRYPTO_memdup(const void *data, size_t siz, const char* file, int line)
{
    void *ret;

    if (data == ((void*)0) || siz >= INT_MAX)
        return ((void*)0);

    ret = CRYPTO_malloc(siz, file, line);
    if (ret == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_CRYPTO_MEMDUP, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    return memcpy(ret, data, siz);
}
