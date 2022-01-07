
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 scalar_t__ BUF_LEN ;
 int PACKET_buf_init (int *,int ,scalar_t__) ;
 int PACKET_copy_bytes (int *,unsigned char*,int) ;
 int PACKET_forward (int *,scalar_t__) ;
 int PACKET_remaining (int *) ;
 int TEST_char_eq (unsigned char,int) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,scalar_t__) ;
 int TEST_true (int ) ;
 int TEST_uchar_eq (unsigned char,int) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_copy_bytes(void)
{
    unsigned char bytes[4];
    PACKET pkt;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_copy_bytes(&pkt, bytes, 4))
            || !TEST_char_eq(bytes[0], 2)
            || !TEST_char_eq(bytes[1], 4)
            || !TEST_char_eq(bytes[2], 6)
            || !TEST_char_eq(bytes[3], 8)
            || !TEST_size_t_eq(PACKET_remaining(&pkt), BUF_LEN - 4)
            || !TEST_true(PACKET_forward(&pkt, BUF_LEN - 8))
            || !TEST_true(PACKET_copy_bytes(&pkt, bytes, 4))
            || !TEST_uchar_eq(bytes[0], 0xf8)
            || !TEST_uchar_eq(bytes[1], 0xfa)
            || !TEST_uchar_eq(bytes[2], 0xfc)
            || !TEST_uchar_eq(bytes[3], 0xfe)
            || !TEST_false(PACKET_remaining(&pkt)))
        return 0;

    return 1;
}
