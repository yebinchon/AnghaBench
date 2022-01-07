
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int SYS_DVB__COUNT__ ;
 char const** dvb_delsys_str ;

const char *get_dvb_delsys(unsigned int delsys)
{
    if (SYS_DVB__COUNT__ <= delsys)
        return dvb_delsys_str[0];
    return dvb_delsys_str[delsys];
}
