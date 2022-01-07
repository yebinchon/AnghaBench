
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int BUF_LEN ;
 int PACKET_buf_init (int *,int ,int) ;
 int PACKET_forward (int *,int) ;
 int PACKET_get_bytes (int *,unsigned char const**,int) ;
 int TEST_true (int ) ;
 int TEST_uchar_eq (unsigned char const,int) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_forward(void)
{
    const unsigned char *byte = ((void*)0);
    PACKET pkt;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_forward(&pkt, 1))
            || !TEST_true(PACKET_get_bytes(&pkt, &byte, 1))
            || !TEST_uchar_eq(byte[0], 4)
            || !TEST_true(PACKET_forward(&pkt, BUF_LEN - 3))
            || !TEST_true(PACKET_get_bytes(&pkt, &byte, 1))
            || !TEST_uchar_eq(byte[0], 0xfe))
        return 0;

    return 1;
}
