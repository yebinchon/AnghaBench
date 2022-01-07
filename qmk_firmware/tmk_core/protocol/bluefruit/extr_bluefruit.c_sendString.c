
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int serial_send (char) ;

void sendString(char string[], int length) {
    for (int i = 0; i < length; i++) {
        serial_send(string[i]);
    }
}
