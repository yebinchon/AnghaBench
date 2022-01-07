
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int root; } ;
typedef TYPE_1__ obs_hotkey_name_map_t ;


 int insert (int *,int *,char const*,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static void obs_hotkey_name_map_insert(obs_hotkey_name_map_t *trie,
           const char *key, int v)
{
 if (!trie || !key)
  return;

 insert(((void*)0), &trie->root, key, strlen(key), v);
}
