
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int PACKET_buf_init (int *,unsigned char*,int) ;
 int PACKET_contains_zero_byte (int *) ;
 int TEST_false (int ) ;
 int TEST_true (int ) ;
 int memset (char*,char,int) ;

__attribute__((used)) static int test_PACKET_contains_zero_byte(void)
{
    char buf1[10], buf2[10];
    PACKET pkt;

    memset(buf1, 'x', 10);
    memset(buf2, 'y', 10);
    buf2[5] = '\0';

    if (!TEST_true(PACKET_buf_init(&pkt, (unsigned char*)buf1, 10))
            || !TEST_false(PACKET_contains_zero_byte(&pkt))
            || !TEST_true(PACKET_buf_init(&pkt, (unsigned char*)buf2, 10))
            || !TEST_true(PACKET_contains_zero_byte(&pkt)))
        return 0;

    return 1;
}
