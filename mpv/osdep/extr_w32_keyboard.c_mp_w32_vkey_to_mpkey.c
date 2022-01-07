
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int lookup_keymap (int ,int ) ;
 int vk_map ;
 int vk_map_ext ;

int mp_w32_vkey_to_mpkey(UINT vkey, bool extended)
{



    int mpkey = lookup_keymap(extended ? vk_map_ext : vk_map, vkey);



    if (extended && !mpkey)
        mpkey = lookup_keymap(vk_map, vkey);

    return mpkey;
}
