
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ visualizer_keyboard_status_t ;
typedef scalar_t__ systime_t ;
typedef int GSourceListener ;
typedef int GSourceHandle ;


 scalar_t__ MS2ST (int) ;
 scalar_t__* begin_write_current_status () ;
 scalar_t__ chVTGetSystemTimeX () ;
 scalar_t__ current_status ;
 int end_write_current_status () ;
 int * geventGetSourceListener (int ,int *) ;
 int geventSendEvent (int *) ;

void update_status(bool changed) {
    if (changed) {
        GSourceListener* listener = geventGetSourceListener((GSourceHandle)&current_status, ((void*)0));
        if (listener) {
            geventSendEvent(listener);
        }
    }
}
