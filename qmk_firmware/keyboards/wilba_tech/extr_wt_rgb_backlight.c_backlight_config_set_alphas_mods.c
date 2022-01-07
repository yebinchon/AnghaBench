
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_2__ {int * alphas_mods; } ;


 int backlight_config_save () ;
 TYPE_1__ g_config ;

void backlight_config_set_alphas_mods( uint16_t *alphas_mods )
{
    for ( int i=0; i<5; i++ )
    {
        g_config.alphas_mods[i] = alphas_mods[i];
    }

    backlight_config_save();
}
