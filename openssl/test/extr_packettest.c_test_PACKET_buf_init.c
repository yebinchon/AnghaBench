
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int BUF_LEN ;
 int PACKET_buf_init (int *,unsigned char*,int) ;
 int PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,int) ;
 int TEST_true (int ) ;

__attribute__((used)) static int test_PACKET_buf_init(void)
{
    unsigned char buf1[BUF_LEN];
    PACKET pkt;


    if (!TEST_true(PACKET_buf_init(&pkt, buf1, 4))
            || !TEST_size_t_eq(PACKET_remaining(&pkt), 4)
            || !TEST_true(PACKET_buf_init(&pkt, buf1, BUF_LEN))
            || !TEST_size_t_eq(PACKET_remaining(&pkt), BUF_LEN)
            || !TEST_false(PACKET_buf_init(&pkt, buf1, -1)))
        return 0;

    return 1;
}
