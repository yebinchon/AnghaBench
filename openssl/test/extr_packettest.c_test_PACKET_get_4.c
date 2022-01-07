
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 scalar_t__ BUF_LEN ;
 int PACKET_buf_init (int *,int ,scalar_t__) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_get_4 (int *,unsigned long*) ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 int TEST_ulong_eq (unsigned long,int) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_get_4(void)
{
    unsigned long i = 0;
    PACKET pkt;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_get_4(&pkt, &i))
            || !TEST_ulong_eq(i, 0x08060402UL)
            || !TEST_true(PACKET_forward(&pkt, BUF_LEN - 8))
            || !TEST_true(PACKET_get_4(&pkt, &i))
            || !TEST_ulong_eq(i, 0xfefcfaf8UL)
            || !TEST_false(PACKET_get_4(&pkt, &i)))
        return 0;

    return 1;
}
