
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pair_partner_id; } ;
typedef TYPE_1__ obs_hotkey_t ;
typedef int obs_hotkey_id ;



obs_hotkey_id obs_hotkey_get_pair_partner_id(const obs_hotkey_t *key)
{
 return key->pair_partner_id;
}
