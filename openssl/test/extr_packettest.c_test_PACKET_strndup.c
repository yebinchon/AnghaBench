
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int OPENSSL_free (char*) ;
 int PACKET_buf_init (int *,unsigned char*,int) ;
 int PACKET_strndup (int *,char**) ;
 int TEST_size_t_eq (int ,int) ;
 int TEST_str_eq (char*,char*) ;
 int TEST_strn_eq (char*,char*,int) ;
 int TEST_true (int ) ;
 int memset (char*,char,int) ;
 int strlen (char*) ;

__attribute__((used)) static int test_PACKET_strndup(void)
{
    char buf1[10], buf2[10];
    char *data = ((void*)0);
    PACKET pkt;
    int result = 0;

    memset(buf1, 'x', 10);
    memset(buf2, 'y', 10);
    buf2[5] = '\0';

    if (!TEST_true(PACKET_buf_init(&pkt, (unsigned char*)buf1, 10))
            || !TEST_true(PACKET_strndup(&pkt, &data))
            || !TEST_size_t_eq(strlen(data), 10)
            || !TEST_strn_eq(data, buf1, 10)
            || !TEST_true(PACKET_buf_init(&pkt, (unsigned char*)buf2, 10))
            || !TEST_true(PACKET_strndup(&pkt, &data))
            || !TEST_size_t_eq(strlen(data), 5)
            || !TEST_str_eq(data, buf2))
        goto end;

    result = 1;
end:
    OPENSSL_free(data);
    return result;
}
