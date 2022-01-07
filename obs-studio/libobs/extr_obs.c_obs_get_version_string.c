
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* OBS_VERSION ;

const char *obs_get_version_string(void)
{
 return OBS_VERSION;
}
