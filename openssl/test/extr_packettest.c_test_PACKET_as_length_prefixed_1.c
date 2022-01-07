
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpkt ;
typedef int PACKET ;


 int BUF_LEN ;
 int PACKET_as_length_prefixed_1 (int *,int *) ;
 int PACKET_buf_init (int *,unsigned char*,size_t const) ;
 int PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,size_t const) ;
 int TEST_true (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int test_PACKET_as_length_prefixed_1(void)
{
    unsigned char buf1[BUF_LEN];
    const size_t len = 16;
    unsigned int i;
    PACKET pkt, exact_pkt, subpkt;

    memset(&subpkt, 0, sizeof(subpkt));
    buf1[0] = (unsigned char)len;
    for (i = 1; i < BUF_LEN; i++)
        buf1[i] = (i * 2) & 0xff;

    if (!TEST_true(PACKET_buf_init(&pkt, buf1, BUF_LEN))
            || !TEST_true(PACKET_buf_init(&exact_pkt, buf1, len + 1))
            || !TEST_false(PACKET_as_length_prefixed_1(&pkt, &subpkt))
            || !TEST_size_t_eq(PACKET_remaining(&pkt), BUF_LEN)
            || !TEST_true(PACKET_as_length_prefixed_1(&exact_pkt, &subpkt))
            || !TEST_size_t_eq(PACKET_remaining(&exact_pkt), 0)
            || !TEST_size_t_eq(PACKET_remaining(&subpkt), len))
        return 0;

    return 1;
}
