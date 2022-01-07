
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 int SERIAL_DELAY ;
 int SERIAL_MASTER_BUFFER_LENGTH ;
 int SERIAL_SLAVE_BUFFER_LENGTH ;
 int _delay_us (int) ;
 int cli () ;
 int sei () ;
 int serial_high () ;
 int serial_input () ;
 int serial_low () ;
 scalar_t__* serial_master_buffer ;
 int serial_output () ;
 scalar_t__ serial_read_byte () ;
 scalar_t__ serial_read_pin () ;
 scalar_t__* serial_slave_buffer ;
 int serial_write_byte (scalar_t__) ;
 int sync_recv () ;

int serial_update_buffers(void) {

  cli();


  serial_output();
  serial_low();
  _delay_us(1);


  serial_input();
  serial_high();
  _delay_us(SERIAL_DELAY);


  if (serial_read_pin()) {

    sei();
    return 1;
  }


  sync_recv();

  uint8_t checksum_computed = 0;

  for (int i = 0; i < SERIAL_SLAVE_BUFFER_LENGTH; ++i) {
    serial_slave_buffer[i] = serial_read_byte();
    sync_recv();
    checksum_computed += serial_slave_buffer[i];
  }
  uint8_t checksum_received = serial_read_byte();
  sync_recv();

  if (checksum_computed != checksum_received) {
    sei();
    return 1;
  }

  uint8_t checksum = 0;

  for (int i = 0; i < SERIAL_MASTER_BUFFER_LENGTH; ++i) {
    serial_write_byte(serial_master_buffer[i]);
    sync_recv();
    checksum += serial_master_buffer[i];
  }
  serial_write_byte(checksum);
  sync_recv();


  serial_output();
  serial_high();

  sei();
  return 0;
}
