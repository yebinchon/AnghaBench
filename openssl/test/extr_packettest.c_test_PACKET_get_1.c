
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 scalar_t__ BUF_LEN ;
 int PACKET_buf_init (int *,int ,scalar_t__) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_get_1 (int *,unsigned int*) ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 int TEST_uint_eq (unsigned int,int) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_get_1(void)
{
    unsigned int i = 0;
    PACKET pkt;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_get_1(&pkt, &i))
            || !TEST_uint_eq(i, 0x02)
            || !TEST_true(PACKET_forward(&pkt, BUF_LEN - 2))
            || !TEST_true(PACKET_get_1(&pkt, &i))
            || !TEST_uint_eq(i, 0xfe)
            || !TEST_false(PACKET_get_1(&pkt, &i)))
        return 0;

    return 1;
}
