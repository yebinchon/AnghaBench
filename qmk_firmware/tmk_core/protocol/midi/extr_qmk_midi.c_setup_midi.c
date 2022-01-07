
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cc_callback ;
 int fallthrough_callback ;
 int midi_device ;
 int midi_device_init (int *) ;
 int midi_device_set_pre_input_process_func (int *,int ) ;
 int midi_device_set_send_func (int *,int ) ;
 int midi_init () ;
 int midi_register_cc_callback (int *,int ) ;
 int midi_register_fallthrough_callback (int *,int ) ;
 int midi_register_sysex_callback (int *,int ) ;
 int sysex_callback ;
 int usb_get_midi ;
 int usb_send_func ;

void setup_midi(void) {



    midi_device_init(&midi_device);
    midi_device_set_send_func(&midi_device, usb_send_func);
    midi_device_set_pre_input_process_func(&midi_device, usb_get_midi);
    midi_register_fallthrough_callback(&midi_device, fallthrough_callback);
    midi_register_cc_callback(&midi_device, cc_callback);



}
