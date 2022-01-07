
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int id; } ;
struct test_packet_id_write_data {int test_buf; TYPE_1__ pis; } ;


 int assert_false (int ) ;
 int packet_id_write (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static void
test_packet_id_write_short_wrap(void **state)
{
    struct test_packet_id_write_data *data = *state;

    data->pis.id = ~0;
    assert_false(packet_id_write(&data->pis, &data->test_buf, 0, 0));
}
