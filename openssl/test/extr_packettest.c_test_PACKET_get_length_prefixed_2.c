
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpkt ;
typedef int PACKET ;


 int PACKET_buf_init (int *,unsigned char*,size_t const) ;
 int PACKET_get_length_prefixed_2 (int *,int *) ;
 int PACKET_get_net_2 (int *,unsigned int*) ;
 int PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,size_t const) ;
 int TEST_true (int ) ;
 int TEST_uint_eq (unsigned int,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int test_PACKET_get_length_prefixed_2(void)
{
    unsigned char buf1[1024];
    const size_t len = 516;
    unsigned int i;
    PACKET pkt, short_pkt, subpkt;

    memset(&subpkt, 0, sizeof(subpkt));
    for (i = 1; i <= 1024; i++)
        buf1[i - 1] = (i * 2) & 0xff;

    if (!TEST_true(PACKET_buf_init(&pkt, buf1, 1024))
            || !TEST_true(PACKET_buf_init(&short_pkt, buf1, len))
            || !TEST_true(PACKET_get_length_prefixed_2(&pkt, &subpkt))
            || !TEST_size_t_eq(PACKET_remaining(&subpkt), len)
            || !TEST_true(PACKET_get_net_2(&subpkt, &i))
            || !TEST_uint_eq(i, 0x0608)
            || !TEST_false(PACKET_get_length_prefixed_2(&short_pkt, &subpkt))
            || !TEST_size_t_eq(PACKET_remaining(&short_pkt), len))
        return 0;

    return 1;
}
