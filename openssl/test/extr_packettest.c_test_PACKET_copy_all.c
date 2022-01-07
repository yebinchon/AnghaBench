
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int BUF_LEN ;
 int PACKET_buf_init (int *,int ,int) ;
 int PACKET_copy_all (int *,unsigned char*,int,size_t*) ;
 size_t PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_mem_eq (int ,int,unsigned char*,int) ;
 int TEST_size_t_eq (size_t,int) ;
 int TEST_true (int ) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_copy_all(void)
{
    unsigned char tmp[BUF_LEN];
    PACKET pkt;
    size_t len;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_copy_all(&pkt, tmp, BUF_LEN, &len))
            || !TEST_size_t_eq(len, BUF_LEN)
            || !TEST_mem_eq(smbuf, BUF_LEN, tmp, BUF_LEN)
            || !TEST_size_t_eq(PACKET_remaining(&pkt), BUF_LEN)
            || !TEST_false(PACKET_copy_all(&pkt, tmp, BUF_LEN - 1, &len)))
        return 0;

    return 1;
}
