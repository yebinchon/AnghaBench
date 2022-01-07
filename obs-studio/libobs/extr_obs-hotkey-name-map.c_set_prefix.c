
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_3__ {scalar_t__ prefix_len; int prefix; int compressed_prefix; scalar_t__ compressed_len; } ;
typedef TYPE_1__ obs_hotkey_name_map_edge_t ;


 size_t NAME_MAP_COMPRESS_LENGTH ;
 int assert (int) ;
 int bstrdup_n (char const*,size_t) ;
 int strncpy (int ,char const*,size_t) ;

__attribute__((used)) static void set_prefix(obs_hotkey_name_map_edge_t *e, const char *prefix,
         size_t l)
{
 assert(e->prefix_len == 0);

 e->compressed_len = (uint8_t)l;
 if (l < NAME_MAP_COMPRESS_LENGTH)
  strncpy(e->compressed_prefix, prefix, l);
 else
  e->prefix = bstrdup_n(prefix, l);
}
