
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_size; int * data; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int OPENSSL_free (unsigned char*) ;
 int OSSL_PARAM_get_octet_string (TYPE_1__ const*,void**,int ,size_t*) ;

__attribute__((used)) static int sskdf_set_buffer(unsigned char **out, size_t *out_len,
                            const OSSL_PARAM *p)
{
    if (p->data == ((void*)0) || p->data_size == 0)
        return 1;
    OPENSSL_free(*out);
    *out = ((void*)0);
    return OSSL_PARAM_get_octet_string(p, (void **)out, 0, out_len);
}
