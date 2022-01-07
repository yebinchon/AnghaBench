
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MPV_CLIENT_API_VERSION ;

unsigned long mpv_client_api_version(void)
{
    return MPV_CLIENT_API_VERSION;
}
