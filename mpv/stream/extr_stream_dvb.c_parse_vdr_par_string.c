
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char pol; int is_dvb_x2; int stream_id; int mod; int inv; } ;
typedef TYPE_1__ dvb_channel_t ;


 int INVERSION_OFF ;
 int INVERSION_ON ;
 int errno ;
 int mp_toupper (char const) ;
 int parse_vdr_modulation (char const**) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static void parse_vdr_par_string(const char *vdr_par_str, dvb_channel_t *ptr)
{


    if (vdr_par_str[0]) {
        const char *vdr_par = &vdr_par_str[0];
        while (vdr_par && *vdr_par) {
            switch (mp_toupper(*vdr_par)) {
            case 'H':
                ptr->pol = 'H';
                vdr_par++;
                break;
            case 'V':
                ptr->pol = 'V';
                vdr_par++;
                break;
            case 'S':
                vdr_par++;
                if (*vdr_par == '1') {
                    ptr->is_dvb_x2 = 1;
                } else {
                    ptr->is_dvb_x2 = 0;
                }
                vdr_par++;
                break;
            case 'P':
                vdr_par++;
                char *endptr = ((void*)0);
                errno = 0;
                int n = strtol(vdr_par, &endptr, 10);
                if (!errno && endptr != vdr_par) {
                    ptr->stream_id = n;
                    vdr_par = endptr;
                }
                break;
            case 'I':
                vdr_par++;
                if (*vdr_par == '1') {
                    ptr->inv = INVERSION_ON;
                } else {
                    ptr->inv = INVERSION_OFF;
                }
                vdr_par++;
                break;
            case 'M':
                vdr_par++;
                ptr->mod = parse_vdr_modulation(&vdr_par);
                break;
            default:
                vdr_par++;
            }
        }
    }
}
