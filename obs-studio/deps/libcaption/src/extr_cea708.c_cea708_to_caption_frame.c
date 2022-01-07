
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int libcaption_stauts_t ;
struct TYPE_3__ {scalar_t__ user_identifier; int timestamp; int user_data; } ;
typedef TYPE_1__ cea708_t ;
typedef scalar_t__ cea708_cc_type_t ;
typedef int caption_frame_t ;


 scalar_t__ GA94 ;
 int LIBCAPTION_OK ;
 int caption_frame_decode (int *,int ,int ) ;
 scalar_t__ cc_type_ntsc_cc_field_1 ;
 int cea708_cc_count (int *) ;
 int cea708_cc_data (int *,int,int*,scalar_t__*) ;
 int libcaption_status_update (int ,int ) ;

libcaption_stauts_t cea708_to_caption_frame(caption_frame_t* frame, cea708_t* cea708)
{
    int i, count = cea708_cc_count(&cea708->user_data);
    libcaption_stauts_t status = LIBCAPTION_OK;

    if (GA94 == cea708->user_identifier) {
        for (i = 0; i < count; ++i) {
            int valid;
            cea708_cc_type_t type;
            uint16_t cc_data = cea708_cc_data(&cea708->user_data, i, &valid, &type);

            if (valid && cc_type_ntsc_cc_field_1 == type) {
                status = libcaption_status_update(status, caption_frame_decode(frame, cc_data, cea708->timestamp));
            }
        }
    }

    return status;
}
