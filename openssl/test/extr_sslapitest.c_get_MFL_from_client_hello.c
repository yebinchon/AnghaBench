
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pkt3 ;
typedef int pkt2 ;
typedef int pkt ;
typedef int PACKET ;
typedef int BIO ;


 long BIO_get_mem_data (int *,char**) ;
 scalar_t__ CLIENT_VERSION_LEN ;
 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_buf_init (int *,unsigned char*,long) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int PACKET_get_length_prefixed_1 (int *,int *) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 scalar_t__ PACKET_remaining (int *) ;
 scalar_t__ SSL3_HM_HEADER_LENGTH ;
 scalar_t__ SSL3_RANDOM_SIZE ;
 scalar_t__ SSL3_RT_HEADER_LENGTH ;
 int TEST_true (int ) ;
 int TEST_uint_gt (long,int ) ;
 int TEST_uint_ne (scalar_t__,int ) ;
 unsigned int TLSEXT_TYPE_max_fragment_length ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int get_MFL_from_client_hello(BIO *bio, int *mfl_codemfl_code)
{
    long len;
    unsigned char *data;
    PACKET pkt, pkt2, pkt3;
    unsigned int MFL_code = 0, type = 0;

    if (!TEST_uint_gt( len = BIO_get_mem_data( bio, (char **) &data ), 0 ) )
        goto end;

    memset(&pkt, 0, sizeof(pkt));
    memset(&pkt2, 0, sizeof(pkt2));
    memset(&pkt3, 0, sizeof(pkt3));

    if (!TEST_true( PACKET_buf_init( &pkt, data, len ) )

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

        if (type == TLSEXT_TYPE_max_fragment_length) {
            if (!TEST_uint_ne(PACKET_remaining(&pkt3), 0)
                    || !TEST_true(PACKET_get_1(&pkt3, &MFL_code)))
                goto end;

            *mfl_codemfl_code = MFL_code;
            return 1;
        }
    }

 end:
    return 0;
}
