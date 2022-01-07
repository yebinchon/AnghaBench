
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* syslog_conf_dir ;

const char* set_syslog_conf_dir( const char* dir )
{
    const char *ret = syslog_conf_dir;
    syslog_conf_dir = dir;
    return ret;
}
