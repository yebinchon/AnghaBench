
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDC_EPSIZE ;
 int CDC_IN_EPADDR ;
 int CDC_NOTIFICATION_EPADDR ;
 int CDC_NOTIFICATION_EPSIZE ;
 int CDC_OUT_EPADDR ;
 int CONSOLE_EPSIZE ;
 int CONSOLE_IN_EPNUM ;
 int CONSOLE_OUT_EPNUM ;
 int ENDPOINT_BANK_SINGLE ;
 int ENDPOINT_CONFIG (int ,int ,int ,int ,int ) ;
 int ENDPOINT_DIR_IN ;
 int ENDPOINT_DIR_OUT ;
 int EP_TYPE_BULK ;
 int EP_TYPE_INTERRUPT ;
 int Endpoint_ConfigureEndpoint (int ,int ,int ,int ) ;
 int KEYBOARD_EPSIZE ;
 int KEYBOARD_IN_EPNUM ;
 int MIDI_STREAM_EPSIZE ;
 int MIDI_STREAM_IN_EPADDR ;
 int MIDI_STREAM_OUT_EPADDR ;
 int MOUSE_EPSIZE ;
 int MOUSE_IN_EPNUM ;
 int RAW_EPSIZE ;
 int RAW_IN_EPNUM ;
 int RAW_OUT_EPNUM ;
 int SHARED_EPSIZE ;
 int SHARED_IN_EPNUM ;

void EVENT_USB_Device_ConfigurationChanged(void) {
    bool ConfigSuccess = 1;



    ConfigSuccess &= ENDPOINT_CONFIG(KEYBOARD_IN_EPNUM, EP_TYPE_INTERRUPT, ENDPOINT_DIR_IN, KEYBOARD_EPSIZE, ENDPOINT_BANK_SINGLE);
}
