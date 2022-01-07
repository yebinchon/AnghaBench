
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 scalar_t__ BUF_LEN ;
 int PACKET_buf_init (int *,int ,scalar_t__) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_get_net_4 (int *,unsigned long*) ;
 int PACKET_get_sub_packet (int *,int *,int) ;
 int PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,int ) ;
 int TEST_true (int ) ;
 int TEST_ulong_eq (unsigned long,int) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_get_sub_packet(void)
{
    PACKET pkt, subpkt;
    unsigned long i = 0;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_get_sub_packet(&pkt, &subpkt, 4))
            || !TEST_true(PACKET_get_net_4(&subpkt, &i))
            || !TEST_ulong_eq(i, 0x02040608UL)
            || !TEST_size_t_eq(PACKET_remaining(&subpkt), 0)
            || !TEST_true(PACKET_forward(&pkt, BUF_LEN - 8))
            || !TEST_true(PACKET_get_sub_packet(&pkt, &subpkt, 4))
            || !TEST_true(PACKET_get_net_4(&subpkt, &i))
            || !TEST_ulong_eq(i, 0xf8fafcfeUL)
            || !TEST_size_t_eq(PACKET_remaining(&subpkt), 0)
            || !TEST_false(PACKET_get_sub_packet(&pkt, &subpkt, 4)))
        return 0;

    return 1;
}
