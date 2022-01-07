
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int obs_hotkey_t ;
struct TYPE_3__ {int * hotkey; } ;
typedef TYPE_1__ obs_hotkey_binding_t ;



obs_hotkey_t *obs_hotkey_binding_get_hotkey(obs_hotkey_binding_t *binding)
{
 return binding->hotkey;
}
