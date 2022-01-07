
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (void*) ;

__attribute__((used)) static int
test_packet_id_write_teardown(void **state) {
    free(*state);
    return 0;
}
