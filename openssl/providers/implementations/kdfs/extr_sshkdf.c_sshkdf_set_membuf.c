
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;


 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OSSL_PARAM_get_octet_string (int const*,void**,int ,size_t*) ;

__attribute__((used)) static int sshkdf_set_membuf(unsigned char **dst, size_t *dst_len,
                             const OSSL_PARAM *p)
{
    OPENSSL_clear_free(*dst, *dst_len);
    *dst = ((void*)0);
    return OSSL_PARAM_get_octet_string(p, (void **)dst, 0, dst_len);
}
