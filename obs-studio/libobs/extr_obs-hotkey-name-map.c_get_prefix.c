
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prefix_len; char* prefix; char* compressed_prefix; } ;
typedef TYPE_1__ obs_hotkey_name_map_edge_t ;


 scalar_t__ NAME_MAP_COMPRESS_LENGTH ;

__attribute__((used)) static inline char *get_prefix(obs_hotkey_name_map_edge_t *e)
{
 return e->prefix_len >= NAME_MAP_COMPRESS_LENGTH ? e->prefix
        : e->compressed_prefix;
}
