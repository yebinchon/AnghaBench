
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pkt5 ;
typedef int pkt4 ;
typedef int pkt3 ;
typedef int pkt2 ;
typedef int pkt ;
typedef int PACKET ;
typedef int BIO ;


 long BIO_get_mem_data (int *,char**) ;
 scalar_t__ CLIENT_VERSION_LEN ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_buf_init (int *,unsigned char*,long) ;
 int PACKET_contains_zero_byte (int *) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 int PACKET_strndup (int *,char**) ;
 scalar_t__ SSL3_HM_HEADER_LENGTH ;
 scalar_t__ SSL3_RANDOM_SIZE ;
 scalar_t__ SSL3_RT_HEADER_LENGTH ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 int TEST_uint_eq (unsigned int,int ) ;
 int TEST_uint_le (scalar_t__,int ) ;
 int TEST_uint_ne (scalar_t__,int ) ;
 int TLSEXT_MAXLEN_host_name ;
 int TLSEXT_NAMETYPE_host_name ;
 unsigned int TLSEXT_TYPE_server_name ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int get_sni_from_client_hello(BIO *bio, char **sni)
{
    long len;
    unsigned char *data;
    PACKET pkt, pkt2, pkt3, pkt4, pkt5;
    unsigned int servname_type = 0, type = 0;
    int ret = 0;

    memset(&pkt, 0, sizeof(pkt));
    memset(&pkt2, 0, sizeof(pkt2));
    memset(&pkt3, 0, sizeof(pkt3));
    memset(&pkt4, 0, sizeof(pkt4));
    memset(&pkt5, 0, sizeof(pkt5));

    len = BIO_get_mem_data(bio, (char **)&data);
    if (!TEST_true(PACKET_buf_init(&pkt, data, len))

            || !PACKET_forward(&pkt, SSL3_RT_HEADER_LENGTH)

            || !TEST_true(PACKET_forward(&pkt, SSL3_HM_HEADER_LENGTH))

            || !TEST_true(PACKET_forward(&pkt, CLIENT_VERSION_LEN
                                               + SSL3_RANDOM_SIZE))

            || !TEST_true(PACKET_get_length_prefixed_1(&pkt, &pkt2))

            || !TEST_true(PACKET_get_length_prefixed_2(&pkt, &pkt2))

            || !TEST_true(PACKET_get_length_prefixed_1(&pkt, &pkt2))

            || !TEST_true(PACKET_as_length_prefixed_2(&pkt, &pkt2)))
        goto end;


    while (PACKET_remaining(&pkt2)) {
        if (!TEST_true(PACKET_get_net_2(&pkt2, &type))
                || !TEST_true(PACKET_get_length_prefixed_2(&pkt2, &pkt3)))
            goto end;
        if (type == TLSEXT_TYPE_server_name) {
            if (!TEST_true(PACKET_get_length_prefixed_2(&pkt3, &pkt4))
                    || !TEST_uint_ne(PACKET_remaining(&pkt4), 0)
                    || !TEST_true(PACKET_get_1(&pkt4, &servname_type))
                    || !TEST_uint_eq(servname_type, TLSEXT_NAMETYPE_host_name)
                    || !TEST_true(PACKET_get_length_prefixed_2(&pkt4, &pkt5))
                    || !TEST_uint_le(PACKET_remaining(&pkt5), TLSEXT_MAXLEN_host_name)
                    || !TEST_false(PACKET_contains_zero_byte(&pkt5))
                    || !TEST_true(PACKET_strndup(&pkt5, sni)))
                goto end;
            ret = 1;
            goto end;
        }
    }
end:
    return ret;
}
