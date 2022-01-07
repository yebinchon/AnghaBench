
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;


 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AVMEDIA_TYPE_UNKNOWN ;
 int AVMEDIA_TYPE_VIDEO ;




enum AVMediaType mp_to_av_stream_type(int type)
{
    switch (type) {
    case 128: return AVMEDIA_TYPE_VIDEO;
    case 130: return AVMEDIA_TYPE_AUDIO;
    case 129: return AVMEDIA_TYPE_SUBTITLE;
    default: return AVMEDIA_TYPE_UNKNOWN;
    }
}
