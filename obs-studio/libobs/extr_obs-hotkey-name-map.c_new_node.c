
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obs_hotkey_name_map_node_t ;


 int * bzalloc (int) ;

__attribute__((used)) static inline obs_hotkey_name_map_node_t *new_node(void)
{
 return bzalloc(sizeof(obs_hotkey_name_map_node_t));
}
