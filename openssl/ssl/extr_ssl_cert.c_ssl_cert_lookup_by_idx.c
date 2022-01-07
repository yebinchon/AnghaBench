
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CERT_LOOKUP ;


 size_t OSSL_NELEM (int const*) ;
 int const* ssl_cert_info ;

const SSL_CERT_LOOKUP *ssl_cert_lookup_by_idx(size_t idx)
{
    if (idx >= OSSL_NELEM(ssl_cert_info))
        return ((void*)0);
    return &ssl_cert_info[idx];
}
