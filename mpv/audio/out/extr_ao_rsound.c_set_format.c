
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ao {int format; } ;


 int AF_FORMAT_S16 ;


 int RSD_S16_NE ;
 int RSD_S32_NE ;
 int RSD_U8 ;

__attribute__((used)) static int set_format(struct ao *ao)
{
    int rsd_format;

    switch (ao->format) {
    case 128:
        rsd_format = RSD_U8;
        break;
    case 129:
        rsd_format = RSD_S32_NE;
        break;
    default:
        rsd_format = RSD_S16_NE;
        ao->format = AF_FORMAT_S16;
    }

    return rsd_format;
}
