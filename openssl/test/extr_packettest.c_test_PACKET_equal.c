
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int BUF_LEN ;
 int PACKET_buf_init (int *,scalar_t__,int) ;
 int PACKET_equal (int *,scalar_t__,int) ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 scalar_t__ smbuf ;

__attribute__((used)) static int test_PACKET_equal(void)
{
    PACKET pkt;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, 4))
            || !TEST_true(PACKET_equal(&pkt, smbuf, 4))
            || !TEST_false(PACKET_equal(&pkt, smbuf + 1, 4))
            || !TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_equal(&pkt, smbuf, BUF_LEN))
            || !TEST_false(PACKET_equal(&pkt, smbuf, BUF_LEN - 1))
            || !TEST_false(PACKET_equal(&pkt, smbuf, BUF_LEN + 1))
            || !TEST_false(PACKET_equal(&pkt, smbuf, 0)))
        return 0;

    return 1;
}
