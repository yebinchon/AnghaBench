
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* d1; } ;
struct TYPE_6__ {size_t mtu; } ;
typedef int SSL_CIPHER ;
typedef TYPE_2__ SSL ;


 size_t DTLS1_RT_HEADER_LENGTH ;
 scalar_t__ SSL_READ_ETM (TYPE_2__ const*) ;
 int * SSL_get_current_cipher (TYPE_2__ const*) ;
 int ssl_cipher_get_overhead (int const*,size_t*,size_t*,size_t*,size_t*) ;

size_t DTLS_get_data_mtu(const SSL *s)
{
    size_t mac_overhead, int_overhead, blocksize, ext_overhead;
    const SSL_CIPHER *ciph = SSL_get_current_cipher(s);
    size_t mtu = s->d1->mtu;

    if (ciph == ((void*)0))
        return 0;

    if (!ssl_cipher_get_overhead(ciph, &mac_overhead, &int_overhead,
                                 &blocksize, &ext_overhead))
        return 0;

    if (SSL_READ_ETM(s))
        ext_overhead += mac_overhead;
    else
        int_overhead += mac_overhead;


    if (ext_overhead + DTLS1_RT_HEADER_LENGTH >= mtu)
        return 0;
    mtu -= ext_overhead + DTLS1_RT_HEADER_LENGTH;



    if (blocksize)
        mtu -= (mtu % blocksize);


    if (int_overhead >= mtu)
        return 0;
    mtu -= int_overhead;

    return mtu;
}
