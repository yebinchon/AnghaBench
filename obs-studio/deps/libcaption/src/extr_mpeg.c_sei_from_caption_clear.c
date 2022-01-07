
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int timestamp; } ;
typedef TYPE_1__ sei_t ;
typedef int libcaption_stauts_t ;
typedef int cea708_t ;


 int DEFAULT_CHANNEL ;
 int LIBCAPTION_OK ;
 int cc_type_ntsc_cc_field_1 ;
 int cea708_add_cc_data (int *,int,int ,int ) ;
 int cea708_init (int *,int ) ;
 int eia608_control_command (int ,int ) ;
 int eia608_control_end_of_caption ;
 int eia608_control_erase_display_memory ;
 int eia608_control_erase_non_displayed_memory ;
 int sei_append_708 (TYPE_1__*,int *) ;

libcaption_stauts_t sei_from_caption_clear(sei_t* sei)
{
    cea708_t cea708;
    cea708_init(&cea708, sei->timestamp);
    cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_end_of_caption, DEFAULT_CHANNEL));
    cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_end_of_caption, DEFAULT_CHANNEL));
    cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_erase_non_displayed_memory, DEFAULT_CHANNEL));
    cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_erase_non_displayed_memory, DEFAULT_CHANNEL));
    cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_erase_display_memory, DEFAULT_CHANNEL));
    cea708_add_cc_data(&cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_erase_display_memory, DEFAULT_CHANNEL));
    sei_append_708(sei, &cea708);
    return LIBCAPTION_OK;
}
