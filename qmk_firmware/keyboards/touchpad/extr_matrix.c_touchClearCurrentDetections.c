
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int readDataFromTS (int) ;

void touchClearCurrentDetections(void) {
  readDataFromTS(0x05);
  readDataFromTS(0x02);
  readDataFromTS(0x03);
  readDataFromTS(0x04);
}
