
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum Device { ____Placeholder_Device } Device ;


 int send_value (int ,int) ;

void send_color(uint8_t r, uint8_t g, uint8_t b, enum Device device) {
  send_value(r, device);
  send_value(g, device);
  send_value(b, device);
}
