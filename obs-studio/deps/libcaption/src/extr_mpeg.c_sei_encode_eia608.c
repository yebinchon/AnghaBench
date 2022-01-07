
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
typedef int sei_t ;
struct TYPE_6__ {int cc_count; } ;
struct TYPE_7__ {TYPE_1__ user_data; } ;
typedef TYPE_2__ cea708_t ;


 int DEFAULT_CHANNEL ;
 int cc_type_ntsc_cc_field_1 ;
 int cea708_add_cc_data (TYPE_2__*,int,int ,scalar_t__) ;
 scalar_t__ eia608_control_command (int ,int ) ;
 int eia608_control_end_of_caption ;
 int eia608_control_resume_caption_loading ;
 int sei_append_708 (int *,TYPE_2__*) ;

void sei_encode_eia608(sei_t* sei, cea708_t* cea708, uint16_t cc_data)
{


    if (31 == cea708->user_data.cc_count) {
        sei_append_708(sei, cea708);
    }

    if (0 == cea708->user_data.cc_count) {
        cea708_add_cc_data(cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_resume_caption_loading, DEFAULT_CHANNEL));
        cea708_add_cc_data(cea708, 1, cc_type_ntsc_cc_field_1, eia608_control_command(eia608_control_resume_caption_loading, DEFAULT_CHANNEL));
    }

    if (0 == cc_data) {
        sei_encode_eia608(sei, cea708, eia608_control_command(eia608_control_end_of_caption, DEFAULT_CHANNEL));
        sei_encode_eia608(sei, cea708, eia608_control_command(eia608_control_end_of_caption, DEFAULT_CHANNEL));
        sei_append_708(sei, cea708);
        return;
    }

    cea708_add_cc_data(cea708, 1, cc_type_ntsc_cc_field_1, cc_data);
}
