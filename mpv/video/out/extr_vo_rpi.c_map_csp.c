
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mp_csp { ____Placeholder_mp_csp } mp_csp ;
typedef int MMAL_FOURCC_T ;


 int MMAL_COLOR_SPACE_ITUR_BT601 ;
 int MMAL_COLOR_SPACE_ITUR_BT709 ;
 int MMAL_COLOR_SPACE_SMPTE240M ;
 int MMAL_COLOR_SPACE_UNKNOWN ;




__attribute__((used)) static MMAL_FOURCC_T map_csp(enum mp_csp csp)
{
    switch (csp) {
    case 130: return MMAL_COLOR_SPACE_ITUR_BT601;
    case 129: return MMAL_COLOR_SPACE_ITUR_BT709;
    case 128: return MMAL_COLOR_SPACE_SMPTE240M;
    default: return MMAL_COLOR_SPACE_UNKNOWN;
    }
}
