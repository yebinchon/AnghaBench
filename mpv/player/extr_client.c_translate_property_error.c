
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPV_ERROR_PROPERTY_ERROR ;
 int MPV_ERROR_PROPERTY_FORMAT ;
 int MPV_ERROR_PROPERTY_NOT_FOUND ;
 int MPV_ERROR_PROPERTY_UNAVAILABLE ;







__attribute__((used)) static int translate_property_error(int errc)
{
    switch (errc) {
    case 130: return 0;
    case 133: return MPV_ERROR_PROPERTY_ERROR;
    case 129: return MPV_ERROR_PROPERTY_UNAVAILABLE;
    case 131: return MPV_ERROR_PROPERTY_ERROR;
    case 128: return MPV_ERROR_PROPERTY_NOT_FOUND;
    case 132: return MPV_ERROR_PROPERTY_FORMAT;

    default: return MPV_ERROR_PROPERTY_ERROR;
    }
}
