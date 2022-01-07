
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int appcmd_map ;
 int lookup_keymap (int ,int ) ;

int mp_w32_appcmd_to_mpkey(UINT appcmd)
{
    return lookup_keymap(appcmd_map, appcmd);
}
