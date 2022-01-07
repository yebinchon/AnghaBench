
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int min_dtls; } ;
typedef TYPE_1__ SSL_CIPHER ;


 int TEST_info (char*,int ,...) ;
 int TEST_true (int ) ;
 TYPE_1__* ssl3_get_cipher (int) ;
 int ssl3_num_ciphers () ;
 int ssl_cipher_get_overhead (TYPE_1__ const*,size_t*,size_t*,size_t*,size_t*) ;

__attribute__((used)) static int cipher_overhead(void)
{
    int ret = 1, i, n = ssl3_num_ciphers();
    const SSL_CIPHER *ciph;
    size_t mac, in, blk, ex;

    for (i = 0; i < n; i++) {
        ciph = ssl3_get_cipher(i);
        if (!ciph->min_dtls)
            continue;
        if (!TEST_true(ssl_cipher_get_overhead(ciph, &mac, &in, &blk, &ex))) {
            TEST_info("Failed getting %s", ciph->name);
            ret = 0;
        } else {
            TEST_info("Cipher %s: %zu %zu %zu %zu",
                      ciph->name, mac, in, blk, ex);
        }
    }
    return ret;
}
