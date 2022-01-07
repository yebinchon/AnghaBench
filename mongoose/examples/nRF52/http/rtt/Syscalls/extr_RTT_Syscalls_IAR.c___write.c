
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEGGER_RTT_Write (int ,unsigned char const*,size_t) ;

size_t __write(int handle, const unsigned char * buffer, size_t size) {
  (void) handle;
  SEGGER_RTT_Write(0, buffer, size);
  return size;
}
