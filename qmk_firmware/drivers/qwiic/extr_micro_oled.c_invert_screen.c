
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INVERTDISPLAY ;
 int NORMALDISPLAY ;
 int send_command (int ) ;

void invert_screen(bool invert) {
    if (invert) {
        send_command(INVERTDISPLAY);
    } else {
        send_command(NORMALDISPLAY);
    }
}
