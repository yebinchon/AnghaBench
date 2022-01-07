
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 scalar_t__ BUF_LEN ;
 int OPENSSL_free (unsigned char*) ;
 int PACKET_buf_init (int *,int ,scalar_t__) ;
 int PACKET_data (int *) ;
 int PACKET_forward (int *,int) ;
 int PACKET_memdup (int *,unsigned char**,size_t*) ;
 int TEST_mem_eq (unsigned char*,size_t,int ,size_t) ;
 int TEST_size_t_eq (size_t,scalar_t__) ;
 int TEST_true (int ) ;
 int smbuf ;

__attribute__((used)) static int test_PACKET_memdup(void)
{
    unsigned char *data = ((void*)0);
    size_t len;
    PACKET pkt;
    int result = 0;

    if (!TEST_true(PACKET_buf_init(&pkt, smbuf, BUF_LEN))
            || !TEST_true(PACKET_memdup(&pkt, &data, &len))
            || !TEST_size_t_eq(len, BUF_LEN)
            || !TEST_mem_eq(data, len, PACKET_data(&pkt), len)
            || !TEST_true(PACKET_forward(&pkt, 10))
            || !TEST_true(PACKET_memdup(&pkt, &data, &len))
            || !TEST_size_t_eq(len, BUF_LEN - 10)
            || !TEST_mem_eq(data, len, PACKET_data(&pkt), len))
        goto end;
    result = 1;
end:
    OPENSSL_free(data);
    return result;
}
