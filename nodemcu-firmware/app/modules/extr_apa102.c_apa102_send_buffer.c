
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int apa102_send_byte (int,int,int) ;

__attribute__((used)) static void apa102_send_buffer(uint32_t data_pin, uint32_t clock_pin, uint32_t *buf, uint32_t nbr_frames) {
  int i;


  apa102_send_byte(data_pin, clock_pin, 0x00);
  apa102_send_byte(data_pin, clock_pin, 0x00);
  apa102_send_byte(data_pin, clock_pin, 0x00);
  apa102_send_byte(data_pin, clock_pin, 0x00);


  for (i = 0; i < nbr_frames; i++) {
    uint8_t *byte = (uint8_t *) buf++;




    byte[0] |= 0xE0;
    apa102_send_byte(data_pin, clock_pin, byte[0]);
    apa102_send_byte(data_pin, clock_pin, byte[1]);
    apa102_send_byte(data_pin, clock_pin, byte[2]);
    apa102_send_byte(data_pin, clock_pin, byte[3]);
  }


  uint32_t required_postamble_frames = (nbr_frames + 1) / 2;
  for (i = 0; i < required_postamble_frames; i++) {
    apa102_send_byte(data_pin, clock_pin, 0xFF);
    apa102_send_byte(data_pin, clock_pin, 0xFF);
    apa102_send_byte(data_pin, clock_pin, 0xFF);
    apa102_send_byte(data_pin, clock_pin, 0xFF);
  }
}
