
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET ;


 int PACKET_forward (int *,int) ;
 int PACKET_null_init (int *) ;
 int PACKET_remaining (int *) ;
 int TEST_false (int ) ;
 int TEST_size_t_eq (int ,int ) ;

__attribute__((used)) static int test_PACKET_null_init(void)
{
    PACKET pkt;

    PACKET_null_init(&pkt);
    if (!TEST_size_t_eq(PACKET_remaining(&pkt), 0)
            || !TEST_false(PACKET_forward(&pkt, 1)))
        return 0;

    return 1;
}
