
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* filter_map ;


 size_t strlen (char const*) ;

__attribute__((used)) static void filter_map_update(filter_map *map, int flag, const unsigned char *allowed_list)
{
 size_t l, i;

 l = strlen((const char*)allowed_list);
 for (i = 0; i < l; ++i) {
  (*map)[allowed_list[i]] = flag;
 }
}
