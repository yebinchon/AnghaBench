
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mpv_handle ;


 int MPV_FORMAT_STRING ;
 int mpv_set_property (int *,char const*,int ,char const**) ;

int mpv_set_property_string(mpv_handle *ctx, const char *name, const char *data)
{
    return mpv_set_property(ctx, name, MPV_FORMAT_STRING, &data);
}
