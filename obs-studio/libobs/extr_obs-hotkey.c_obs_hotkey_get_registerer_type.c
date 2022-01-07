
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int registerer_type; } ;
typedef TYPE_1__ obs_hotkey_t ;
typedef int obs_hotkey_registerer_t ;



obs_hotkey_registerer_t obs_hotkey_get_registerer_type(const obs_hotkey_t *key)
{
 return key->registerer_type;
}
