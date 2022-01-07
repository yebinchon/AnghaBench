
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;


 int const DEV_TYPE_TAP ;
 int const DEV_TYPE_TUN ;
 int dev_type_enum (char const*,char const*) ;
 char const* netsh_get_id (char const*,struct gc_arena*) ;

const char *
guess_tuntap_dev(const char *dev,
                 const char *dev_type,
                 const char *dev_node,
                 struct gc_arena *gc)
{
    return dev;
}
