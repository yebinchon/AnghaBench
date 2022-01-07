
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lwan_url_map {char const* prefix; int prefix_len; } ;
struct lwan_trie {int dummy; } ;


 int lwan_status_critical_perror (char*) ;
 int lwan_trie_add (struct lwan_trie*,char const*,struct lwan_url_map*) ;
 struct lwan_url_map* malloc (int) ;
 int memcpy (struct lwan_url_map*,struct lwan_url_map const*,int) ;
 char const* strdup (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static struct lwan_url_map *add_url_map(struct lwan_trie *t, const char *prefix,
                                        const struct lwan_url_map *map)
{
    struct lwan_url_map *copy = malloc(sizeof(*copy));

    if (!copy)
        lwan_status_critical_perror("Could not copy URL map");

    memcpy(copy, map, sizeof(*copy));

    copy->prefix = strdup(prefix ? prefix : copy->prefix);
    if (!copy->prefix)
        lwan_status_critical_perror("Could not copy URL prefix");

    copy->prefix_len = strlen(copy->prefix);
    lwan_trie_add(t, copy->prefix, copy);

    return copy;
}
