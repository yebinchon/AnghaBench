
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *OSSL_default_ciphersuites(void)
{
    return "TLS_AES_256_GCM_SHA384:"

           "TLS_CHACHA20_POLY1305_SHA256:"

           "TLS_AES_128_GCM_SHA256";
}
