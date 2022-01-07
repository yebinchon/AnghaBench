
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ obs_hotkey_t ;



const char *obs_hotkey_get_name(const obs_hotkey_t *key)
{
 return key->name;
}
