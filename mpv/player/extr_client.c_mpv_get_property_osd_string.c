
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int MPV_FORMAT_OSD_STRING ;
 int mpv_get_property (int *,char const*,int ,char**) ;

char *mpv_get_property_osd_string(mpv_handle *ctx, const char *name)
{
    char *str = ((void*)0);
    mpv_get_property(ctx, name, MPV_FORMAT_OSD_STRING, &str);
    return str;
}
