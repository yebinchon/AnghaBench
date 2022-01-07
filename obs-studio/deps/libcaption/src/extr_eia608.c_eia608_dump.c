
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int eia608_style_t ;
 scalar_t__ eia608_is_basicna (int) ;
 scalar_t__ eia608_is_control (int) ;
 scalar_t__ eia608_is_midrowchange (int) ;
 scalar_t__ eia608_is_norpak (int) ;
 scalar_t__ eia608_is_preamble (int) ;
 scalar_t__ eia608_is_specialna (int) ;
 scalar_t__ eia608_is_westeu (int) ;
 scalar_t__ eia608_is_xds (int) ;
 int eia608_parity_strip (int) ;
 int eia608_parity_varify (int) ;
 int eia608_parse_control (int,int*) ;
 int eia608_parse_preamble (int,int*,int*,int*,int*,int*) ;




 int eia608_to_utf8 (int,int*,char*,char*) ;
 int fprintf (int ,char*,int,int,...) ;
 int stderr ;

void eia608_dump(uint16_t cc_data)
{
    eia608_style_t style;
    const char* text = 0;
    char char1[5], char2[5];
    char1[0] = char2[0] = 0;
    int row, col, chan, underline;

    if (!eia608_parity_varify(cc_data)) {
        text = "parity failed";
    } else if (0 == eia608_parity_strip(cc_data)) {
        text = "pad";
    } else if (eia608_is_basicna(cc_data)) {
        text = "basicna";
        eia608_to_utf8(cc_data, &chan, &char1[0], &char2[0]);
    } else if (eia608_is_specialna(cc_data)) {
        text = "specialna";
        eia608_to_utf8(cc_data, &chan, &char1[0], &char2[0]);
    } else if (eia608_is_westeu(cc_data)) {
        text = "westeu";
        eia608_to_utf8(cc_data, &chan, &char1[0], &char2[0]);
    } else if (eia608_is_xds(cc_data)) {
        text = "xds";
    } else if (eia608_is_midrowchange(cc_data)) {
        text = "midrowchange";
    } else if (eia608_is_norpak(cc_data)) {
        text = "norpak";
    } else if (eia608_is_preamble(cc_data)) {
        text = "preamble";
        eia608_parse_preamble(cc_data, &row, &col, &style, &chan, &underline);
        fprintf(stderr, "preamble %d %d %d %d %d\n", row, col, style, chan, underline);

    } else if (eia608_is_control(cc_data)) {
        switch (eia608_parse_control(cc_data, &chan)) {

        default:
            text = "unknown_control";
            break;

        case 131:
            text = "eia608_tab_offset_0";
            break;

        case 130:
            text = "eia608_tab_offset_1";
            break;

        case 129:
            text = "eia608_tab_offset_2";
            break;

        case 128:
            text = "eia608_tab_offset_3";
            break;

        case 138:
            text = "eia608_control_resume_caption_loading";
            break;

        case 144:
            text = "eia608_control_backspace";
            break;

        case 146:
            text = "eia608_control_alarm_off";
            break;

        case 145:
            text = "eia608_control_alarm_on";
            break;

        case 142:
            text = "eia608_control_delete_to_end_of_row";
            break;

        case 136:
            text = "eia608_control_roll_up_2";
            break;

        case 135:
            text = "eia608_control_roll_up_3";
            break;

        case 134:
            text = "eia608_control_roll_up_4";
            break;

        case 137:
            text = "eia608_control_resume_direct_captioning";
            break;

        case 133:
            text = "eia608_control_text_restart";
            break;

        case 132:
            text = "eia608_control_text_resume_text_display";
            break;

        case 140:
            text = "eia608_control_erase_display_memory";
            break;

        case 143:
            text = "eia608_control_carriage_return";
            break;

        case 139:
            text = "eia608_control_erase_non_displayed_memory";
            break;

        case 141:
            text = "eia608_control_end_of_caption";
            break;
        }
    } else {
        text = "unhandled";
    }

    fprintf(stderr, "cc %04X (%04X) '%s' '%s' (%s)\n", cc_data, eia608_parity_strip(cc_data), char1, char2, text);
}
