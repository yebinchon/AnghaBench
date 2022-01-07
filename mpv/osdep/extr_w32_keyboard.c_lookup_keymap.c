
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {int from; int to; } ;



__attribute__((used)) static int lookup_keymap(const struct keymap *map, int key)
{
    while (map->from && map->from != key) map++;
    return map->to;
}
