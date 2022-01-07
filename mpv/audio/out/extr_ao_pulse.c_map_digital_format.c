
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pa_encoding_t ;
 int PA_ENCODING_AC3_IEC61937 ;
 int PA_ENCODING_ANY ;
 int PA_ENCODING_DTSHD_IEC61937 ;
 int PA_ENCODING_DTS_IEC61937 ;
 int PA_ENCODING_EAC3_IEC61937 ;
 int PA_ENCODING_MPEG2_AAC_IEC61937 ;
 int PA_ENCODING_MPEG_IEC61937 ;
 int PA_ENCODING_PCM ;
 int PA_ENCODING_TRUEHD_IEC61937 ;
 int af_fmt_is_spdif (int) ;

__attribute__((used)) static pa_encoding_t map_digital_format(int format)
{
    switch (format) {
    case 133: return PA_ENCODING_AC3_IEC61937;
    case 130: return PA_ENCODING_EAC3_IEC61937;
    case 129: return PA_ENCODING_MPEG_IEC61937;
    case 132: return PA_ENCODING_DTS_IEC61937;
    default:
        if (af_fmt_is_spdif(format))
            return PA_ENCODING_ANY;
        return PA_ENCODING_PCM;
    }
}
