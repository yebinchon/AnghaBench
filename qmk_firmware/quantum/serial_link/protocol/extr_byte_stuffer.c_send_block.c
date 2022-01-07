
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int send_data (int ,int *,int) ;

__attribute__((used)) static void send_block(uint8_t link, uint8_t* start, uint8_t* end, uint8_t num_non_zero) {
    send_data(link, &num_non_zero, 1);
    if (end > start) {
        send_data(link, start, end - start);
    }
}
