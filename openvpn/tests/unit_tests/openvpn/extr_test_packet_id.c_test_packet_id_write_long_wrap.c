
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ buf_id; scalar_t__ buf_time; } ;
struct TYPE_4__ {int id; int time; } ;
struct test_packet_id_write_data {TYPE_1__ test_buf_data; TYPE_2__ pis; int test_buf; } ;


 int assert (int) ;
 int assert_false (int) ;
 int assert_true (int) ;
 scalar_t__ htonl (int) ;
 int now ;
 int packet_id_write (TYPE_2__*,int *,int,int) ;

__attribute__((used)) static void
test_packet_id_write_long_wrap(void **state)
{
    struct test_packet_id_write_data *data = *state;

    data->pis.id = ~0;
    data->pis.time = 5006;


    now = 5006;
    assert_false(packet_id_write(&data->pis, &data->test_buf, 1, 0));


    now = 5010;
    assert_true(packet_id_write(&data->pis, &data->test_buf, 1, 0));

    assert(data->pis.id == 1);
    assert(data->pis.time == now);
    assert_true(data->test_buf_data.buf_id == htonl(1));
    assert_true(data->test_buf_data.buf_time == htonl(now));
}
