
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subpkt ;
typedef int PACKET ;


 int PACKET_as_length_prefixed_2 (int *,int *) ;
 int PACKET_buf_init (int *,unsigned char*,size_t const) ;
 int PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,size_t const) ;
 int TEST_true (int ) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int test_PACKET_as_length_prefixed_2(void)
{
    unsigned char buf[1024];
    const size_t len = 516;
    unsigned int i;
    PACKET pkt, exact_pkt, subpkt;

    memset(&subpkt, 0, sizeof(subpkt));
    for (i = 1; i <= 1024; i++)
        buf[i-1] = (i * 2) & 0xff;

    if (!TEST_true(PACKET_buf_init(&pkt, buf, 1024))
            || !TEST_true(PACKET_buf_init(&exact_pkt, buf, len + 2))
            || !TEST_false(PACKET_as_length_prefixed_2(&pkt, &subpkt))
            || !TEST_size_t_eq(PACKET_remaining(&pkt), 1024)
            || !TEST_true(PACKET_as_length_prefixed_2(&exact_pkt, &subpkt))
            || !TEST_size_t_eq(PACKET_remaining(&exact_pkt), 0)
            || !TEST_size_t_eq(PACKET_remaining(&subpkt), len))
        return 0;

    return 1;
}
