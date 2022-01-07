
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_size; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int ERR_LIB_PROV ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_raise (int ,int ) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (int) ;
 int OSSL_PARAM_get_octet_string (TYPE_1__ const*,void**,int ,size_t*) ;

__attribute__((used)) static int scrypt_set_membuf(unsigned char **buffer, size_t *buflen,
                             const OSSL_PARAM *p)
{
    OPENSSL_clear_free(*buffer, *buflen);
    if (p->data_size == 0) {
        if ((*buffer = OPENSSL_malloc(1)) == ((void*)0)) {
            ERR_raise(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }
    } else if (p->data != ((void*)0)) {
        *buffer = ((void*)0);
        if (!OSSL_PARAM_get_octet_string(p, (void **)buffer, 0, buflen))
            return 0;
    }
    return 1;
}
