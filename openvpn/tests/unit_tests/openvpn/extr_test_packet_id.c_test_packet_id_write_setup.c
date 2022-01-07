
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int capacity; void* data; } ;
struct test_packet_id_write_data {TYPE_1__ test_buf; int test_buf_data; } ;


 struct test_packet_id_write_data* calloc (int,int) ;

__attribute__((used)) static int
test_packet_id_write_setup(void **state) {
    struct test_packet_id_write_data *data =
            calloc(1, sizeof(struct test_packet_id_write_data));

    if (!data)
    {
        return -1;
    }

    data->test_buf.data = (void *) &data->test_buf_data;
    data->test_buf.capacity = sizeof(data->test_buf_data);

    *state = data;
    return 0;
}
