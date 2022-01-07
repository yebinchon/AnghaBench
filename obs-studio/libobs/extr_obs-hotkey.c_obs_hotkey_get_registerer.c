
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* registerer; } ;
typedef TYPE_1__ obs_hotkey_t ;



void *obs_hotkey_get_registerer(const obs_hotkey_t *key)
{
 return key->registerer;
}
