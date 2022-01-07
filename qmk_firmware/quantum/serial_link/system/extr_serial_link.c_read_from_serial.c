
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int SerialDriver ;


 int byte_stuffer_recv_byte (int ,int ) ;
 int sdAsynchronousRead (int *,int *,int const) ;

__attribute__((used)) static uint32_t read_from_serial(SerialDriver* driver, uint8_t link) {
    const uint32_t buffer_size = 16;
    uint8_t buffer[buffer_size];
    uint32_t bytes_read = sdAsynchronousRead(driver, buffer, buffer_size);
    uint8_t* current = buffer;
    uint8_t* end = current + bytes_read;
    while (current < end) {
        byte_stuffer_recv_byte(link, *current);
        current++;
    }
    return bytes_read;
}
