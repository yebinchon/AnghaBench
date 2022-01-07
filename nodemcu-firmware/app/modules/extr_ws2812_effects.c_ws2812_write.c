
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* values; size_t colorsPerLed; size_t size; } ;
typedef TYPE_1__ ws2812_buffer ;


 int ws2812_write_data (char const*,size_t,char const*,size_t) ;

__attribute__((used)) static int ws2812_write(ws2812_buffer* buffer) {
  size_t length1, length2;
  const char *buffer1, *buffer2;

  buffer1 = 0;
  length1 = 0;

  buffer1 = buffer->values;
  length1 = buffer->colorsPerLed*buffer->size;

  buffer2 = 0;
  length2 = 0;


  ws2812_write_data(buffer1, length1, buffer2, length2);

  return 0;
}
